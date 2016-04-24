require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module My_Account_Page
  def click_change_password_link
    wait_till_ell_is_present(@change_Password_Link = @driver.find_element(:xpath, ::Change_Password_Link))
    @change_Password_Link.click
  end

  def verify_that_password_was_changed
    wait_till_ell_is_present(@passowr_Is_Changed_Notification = @driver.find_element(:xpath, ::Passowr_Is_Changed_Notification))
    assert (@passowr_Is_Changed_Notification.displayed?)
  end
end