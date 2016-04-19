require 'test/unit'
require 'selenium-webdriver'
require_relative "../Variables/variable"
# require_relative "../Settings/main_settings"

module Registration_Form
  # include Main_settings

  @driver = Selenium::WebDriver.for :firefox

  @login_Textbox = @driver.find_element(:xpath, ::Login_Textbox)
  @password_Textbox = @driver.find_element(:xpath, ::Password_Textbox)
  @confirmation_Textbox = @driver.find_element(:xpath, ::Confirmation_Textbox)
  @first_Name_Textbox = @driver.find_element(:xpath, ::First_Name_Textbox)
  @last_Name_Textbox = @driver.find_element(:xpath, ::Last_Name_Textbox)
  @email_Textbox = @driver.find_element(:xpath, ::Email_Textbox)
  @submit_Button = @driver.find_element(:xpath, ::Submit_Button)

  def fill_fields
    login = "Kay" + rand(99999).to_s
    @login_Textbox.send(login)
    @password_Textbox.send("06011988")
    @confirmation_Textbox.send("06011988")
    @first_Name_Textbox.send("Serhii")
    @last_Name_Textbox.send("Kay")
    @email_Textbox.send("Kay444413@ukr.net")
  end

  def click_Submit_Button
    @submit_Button.click
  end
end