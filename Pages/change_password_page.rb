require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Change_Password_Page
  def change_password
    wait_till_ell_is_present (@new_Passwprd_Textbox = @driver.find_element(:xpath, ::New_Passwprd_Textbox))
    @password_2_Textbox = @driver.find_element(:xpath, ::Password_2_Textbox)
    @confirmation_1_Textbox  = @driver.find_element(:xpath, ::Confirmation_1_Textbox)
    @apply_Button = @driver.find_element(:xpath, ::Apply_Button)

    old_password = "06011988"
    password = "060119881"
    @password_2_Textbox.clear()
    @password_2_Textbox.send_key(old_password)
    @new_Passwprd_Textbox.send_key(password)
    @confirmation_1_Textbox.send_key(password)
    @apply_Button.click
  end
end