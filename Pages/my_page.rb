require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module My_Page
  include Main_settings

  def check_user_is_signed
    sleep (2)
    wait_till_ell_is_present(@register_link = @driver.find_element(:xpath, ::User_Is_Signed))
    assert (@register_link.displayed?)
  end
end