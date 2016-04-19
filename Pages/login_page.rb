require 'test/unit'
require 'selenium-webdriver'
require_relative "../Variables/variable"
# require_relative "../Settings/main_settings"

module Login_Page
  # include Main_settings

  @driver = Selenium::WebDriver.for :firefox

  def click_register_link
    wait_till_ell_is_present(@register_link = @driver.find_element(:xpath, ::Register_Link))
    @register_link.click
  end

end