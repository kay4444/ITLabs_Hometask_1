require 'test/unit'
require_relative '../Pages/login_page'
require_relative '../Pages/registration_form'
# require_relative "../Settings/main_settings"

class Test_Cases < Test::Unit::TestCase

  include Login_Page
  include Registration_Form
  # include Main_settings

  def setup
    @driver = Selenium::WebDriver.for :firefox
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    # browser = Watir::Browser.new :firefox
    # browser.goto 'http://demo.redmine.org'
    @driver.navigate.to 'http://demo.redmine.org'
  end


  def test_create_new_user
    click_register_link
    fill_fields
    click_Submit_Button
  end

  def teardown
    @driver.quit
  end

end