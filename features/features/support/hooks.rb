Dir[File.join(File.dirname(__FILE__), './*/*.rb')].sort.each { |file| require file }

World(SpecHelper)

Before('@web') do
  Capybara.current_session.driver.browser.manage.window.maximize
end

After('@web') do |scenario|
  printscreen(scenario.name.downcase, scenario.failed? ? 'failed' : 'passed')
  Capybara.current_session.driver.quit
end
