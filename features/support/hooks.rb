# Open a browser tab for each failing scenario
After do |scenario|
  if scenario.status == :failed
    save_and_open_page
  end
end