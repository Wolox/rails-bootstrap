class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

  throttle('req/ip', limit: Rails.application.secrets.max_requests_per_second, period: 1.second) do |req|
    req.ip unless req.path.start_with?('/assets')
  end

  Rack::Attack.throttled_response = lambda do |env|
    now = Time.now
    match_data = env['rack.attack.match_data']

    headers = {
      'X-RateLimit-Limit' => match_data[:limit].to_s,
      'X-RateLimit-Remaining' => '0',
      'X-RateLimit-Reset' => (now + (match_data[:period] - now.to_i % match_data[:period])).to_s
    }

    [429, headers, ["Throttled\n"]]
  end

  #
  # Exponential Backoff configuration for login
  #
  # Allows 20 requests in 8  seconds
  #        40 requests in 64 seconds
  #        ...
  #        100 requests in 0.38 days (~250 requests/day)
  # (1..5).each do |level|
  #   throttle("logins/ip/#{level}", limit: (20 * level), period: (8 ** level).seconds) do |req|
  #     if req.path == my_login_path && req.post?
  #       req.ip
  #     end
  #   end
  # end
end
