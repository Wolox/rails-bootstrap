class Rack::Attack
  ### Configure Cache ###

  # In this class you can set the following variables to configure the blocklisting, whitelisting,
  # and throttling of the requests that the API receives:
  # limit: amount of request that a user can make in a period without being blocked for the rest of
  #        the period
  # period: period of time for the previous limit. When this period is reached, you can make n
  #         more requests, where n is the limit previously defined.
  # maxretry: amount of requests that a user can make in findtime without being blocked for the bantime
  # findtime: period of time for the previous maxretry.
  # bantime: period of time that a user is blocked if exceeds the maxretry in a findtime.
  # Be careful that the configuration for malicious users do not affect normal users  behaviour.

  def self.production?
    Rails.env.production?
  end

  # If you don't want to use Rails.cache (Rack::Attack's default), then
  # configure it here.
  #
  # Note: The store is only used for throttling (not blacklisting and
  # whitelisting). It must implement .increment and .write like
  # ActiveSupport::Cache::Store

  # Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

  ### Throttle Spammy Clients ###

  # If any single client IP is making tons of requests, then they're
  # probably malicious or a poorly-configured scraper. Either way, they
  # don't deserve to hog all of the app server's CPU. Cut them off!
  #
  # Note: If you're serving assets through rack, those requests may be
  # counted by rack-attack and this throttle may be activated too
  # quickly. If so, enable the condition to exclude them from tracking.

  # Throttle all requests by IP (60rpm)
  #
  # Key: "rack::attack:#{Time.now.to_i/:period}:req/ip:#{req.ip}"

  # throttle('req/ip', limit: 50, period: 5.seconds) do |req|
  #   req.ip # unless req.path.start_with?('/assets')
  # end

  ### Prevent Brute-Force Login Attacks ###

  # The most common brute-force login attack is a brute-force password
  # attack where an attacker simply tries a large number of emails and
  # passwords to see if any credentials match.
  #
  # Another common method of attack is to use a swarm of computers with
  # different IPs to try brute-forcing a password for a specific account.

  # Throttle POST requests to /login by IP address
  #
  # Key: "rack::attack:#{Time.now.to_i/:period}:logins/ip:#{req.ip}"

  # throttle('logins/ip', limit: 5, period: 5.seconds) do |req|
  #   if req.path == '/api/v1/users/sign_in' && req.post?
  #     req.ip
  #   elsif req.path == '/admin/login' && req.post?
  #     req.ip
  #   end
  # end

  # Throttle POST requests to /login by email param
  #
  # Key: "rack::attack:#{Time.now.to_i/:period}:logins/email:#{req.email}"
  #
  # Note: This creates a problem where a malicious user could intentionally
  # throttle logins for another user and force their login requests to be
  # denied, but that's not very common and shouldn't happen to you. (Knock
  # on wood!)
  # throttle('logins/email', limit: 5, period: 5.seconds) do |req|
  #   if req.path == '/admin/login' && req.post?
  #     # return the email if present, nil otherwise
  #     req.params['email'].presence
  #   elsif req.path == '/api/v1/users/sign_in' && req.post?
  #     req.params['session']['email'].presence
  #   end
  # end

  # Blocklist
  # Block the ip that send more than 25 requests in 5 seconds
  # blocklist('allow2ban request') do |req|
  #   bantime = production? ? 1.day : 5.seconds
  #   Allow2Ban.filter("request:#{req.ip}", maxretry: 25, findtime: 5.seconds,
  #                                         bantime: bantime) do
  #     req.ip
      # If you want to exclude a route from the blocklist, uncomment the line below and changes
      # the desired routes
      #!req.path.include?('service_route')
  #   end
  # end

  # Block the ip that sends a php request
  # blocklist('allow2ban requests-php') do |req|
  #   bantime = production? ? 1.day : 5.seconds
  #   Allow2Ban.filter("requests-php:#{req.ip}", maxretry: 1, findtime: 1.minute,
  #                                              bantime: bantime) do
  #     req.path.include?('.php')
  #   end
  # end

  ### Custom Throttle Response ###

  # By default, Rack::Attack returns an HTTP 429 for throttled responses,
  # which is just fine.
  #
  # If you want to return 503 so that the attacker might be fooled into
  # believing that they've successfully broken your app (or you just want to
  # customize the response), then uncomment these lines.
  self.throttled_response = lambda do |env|
    [503, {}, ['Server Error']] # status  # headers  # body
  end

  self.blocklisted_response = lambda do |env|
  # Using 503 because it may make attacker think that they have successfully
  # DOSed the site. Rack::Attack returns 403 for blocklists by default
    [503, {}, ['Server Error']]
  end
end
