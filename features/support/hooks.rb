# Open a browser tab for each failing scenario
After do |scenario|
  save_and_open_page if scenario.status == :failed
end
