require 'byebug'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/headless_chrome'
require 'selenium-webdriver'
require 'site_prism'
require 'zip/zip'
require 'zip/zipfilesystem'

require_relative 'helpers'
require_relative 'pages_helpers'

include Helpers

World(Helpers)
World(PagesHelpers)

creat_folder('reports')
delete_filesLog

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://hypeflame.blog/'
    config.default_max_wait_time = 10
  end
  
  navegador = Capybara.current_session.driver.browser
  navegador.manage.window.maximize