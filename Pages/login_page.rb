require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Login_Page
  include Main_settings

  def perform_login
    wait_till_ell_is_present(login_1_textbox = @driver.find_element(:xpath, ::Login_1_textbox))
    password_1_Textbox = @driver.find_element(:xpath, ::Password_1_Textbox)
    login_Button = @driver.find_element(:xpath, ::Login_Button)

    login_1_textbox.send_key("Kay")
    password_1_Textbox.send_key("06011988")
    login_Button.click
  end

end