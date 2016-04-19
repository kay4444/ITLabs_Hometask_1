require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Registration_Form
  include Main_settings

  def fill_fields
    sleep (3)
    wait_till_ell_is_present (@login_Textbox = @driver.find_element(:xpath, ::Login_Textbox))
    @password_Textbox = @driver.find_element(:xpath, ::Password_Textbox)
    @confirmation_Textbox = @driver.find_element(:xpath, ::Confirmation_Textbox)
    @first_Name_Textbox = @driver.find_element(:xpath, ::First_Name_Textbox)
    @last_Name_Textbox = @driver.find_element(:xpath, ::Last_Name_Textbox)
    @email_Textbox = @driver.find_element(:xpath, ::Email_Textbox)
    @submit_Button = @driver.find_element(:xpath, ::Submit_Button)

    login = ("Kay" + rand(1).to_s)
    @login_Textbox.send_keys(login)
    @password_Textbox.send_keys("06011988")
    @confirmation_Textbox.send_keys("06011988")
    @first_Name_Textbox.send_keys("Serhii")
    @last_Name_Textbox.send_keys("Kay")
    @email_Textbox.send_keys("kay444413" + login + "@ukr.net")
  end

  def click_Submit_Button
    @submit_Button.click
  end

  def verify_user_is_registered
    wait_till_ell_is_present (registration_Confirmation_Messqage = @driver.find_element(:xpath, ::Registration_Confirmation_Messqage))
    assert (registration_Confirmation_Messqage.displayed?)
  end
end