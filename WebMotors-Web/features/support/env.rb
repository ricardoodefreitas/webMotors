require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'report_builder'
require_relative "#{Dir.pwd}/features/support/page_objects"

World(PageObjects)

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/webmotors.yml")

Capybara.register_driver :chrome do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument '--disable-gpu'
      options.add_argument '--no-sandbox'
      options.add_argument '--disable-site-isolation-trials'
      options.add_argument '--start-maximized'
      options.add_argument 'user-agent="like RD-AUTOMATION-TESTING"'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
end

Capybara.configure do |config|
  config.default_driver = :chrome
  config.app_host = CONFIG['url_webmotors']
  config.default_max_wait_time = 20
  Capybara.page.driver.browser.manage.window.maximize
end
