require 'simplecov'

process_name = "process_#{ENV['TEST_ENV_NUMBER']}##{Process.pid}"
SimpleCov.command_name process_name
threshold = ENV['MINIMUM_CODE_COVERAGE'] || 0 # TODO: puts real value
SimpleCov.minimum_coverage 0
SimpleCov.start 'rails' do
  `mkdir -p ./coverage/`
  `echo "#{process_name}" >> ./coverage/.started`
end
SimpleCov.at_exit do
  SimpleCov.result.format!
  actual = SimpleCov.result.covered_percent.to_i
  success = (actual >= threshold)
  status = success ? 'DONE' : '...'
  `echo "#{process_name}: #{actual} of #{threshold} #{status}" >> ./coverage/.done`
  processes_started = `cat ./coverage/.started | wc -l`.to_i
  processes_done = `cat ./coverage/.done | wc -l`.to_i
  if processes_started == processes_done
    print "TOTAL COVERAGE: #{actual} of #{threshold} -"
    if success
      puts "\e[0;32m SUCCESS! \e[0m\n"
    else
      puts "\e[0;31m FAIL! \e[0m\n"
      exit 1
    end
  end
end
