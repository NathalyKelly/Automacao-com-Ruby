require 'yaml'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'httparty'
require 'faker'
require 'cpf_faker'

def load_file(path)
  YAML.load_file("#{File.dirname(__FILE__)}#{path}")
end

CONFIG_DATA = load_file('/config/config.yml')

  Capybara.configure do |config|
    config.app_host = CONFIG_DATA['urls']['web']
    config.default_max_wait_time = 10
    config.default_driver = :selenium_chrome
  end
