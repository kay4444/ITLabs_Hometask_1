require 'selenium-webdriver'

# Home Page

Register_Link = "//li/a[@href='/account/register']"
Sign_In_Link = "//li/a[@class='login']"

#  Registration Form
Login_Textbox = "//p/input[@id='user_login']"
Password_Textbox = "//p/input[@id='user_password']"
Confirmation_Textbox = "//p/input[@id='user_password_confirmation']"
First_Name_Textbox = "//p/input[@id='user_firstname']"
Last_Name_Textbox = "//p/input[@id='user_lastname']"
Email_Textbox = "//p/input[@id='user_mail']"
Submit_Button = "//form/input[@type='submit']"
Registration_Confirmation_Messqage = "//div[text()='Your account has been activated. You can now log in.']"

#  Login Page
Login_1_textbox = "//td/input[@id='username']"
Password_1_Textbox = "//td/input[@id='password']"
Login_Button = "//td/input[@type='submit']"

#  My Page
User_Is_Signed = "//a[@class='user active']"


def wait_till_ell_is_present(ell)
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until {ell.displayed?}
end


