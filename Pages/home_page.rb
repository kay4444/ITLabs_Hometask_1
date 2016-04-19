require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Home_Page
  include Main_settings

  def click_register_link
    wait_till_ell_is_present(@register_link = @driver.find_element(:xpath, ::Register_Link))
    @register_link.click
  end

  def click_sign_in_link
    wait_till_ell_is_present(@register_link = @driver.find_element(:xpath, ::Sign_In_Link))
    @register_link.click
  end

end