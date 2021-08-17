After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
  take_screenshot(scenario_name)
end

at_exit do
  zip_screenshot
end