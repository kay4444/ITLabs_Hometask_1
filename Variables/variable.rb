# Login Page

Register_Link = "//li/a[@href='/account/register']"

#  Registration Form
Login_Textbox = "//p/input[@id='user_login']"
Password_Textbox = "//p/input[@id='user_password']"
Confirmation_Textbox = "//p/input[@id='user_password_confirmation']"
First_Name_Textbox = "//p/input[@id='user_firstname']"
Last_Name_Textbox = "//p/input[@id='user_lastname']"
Email_Textbox = "//p/input[@id='user_mail']"
Submit_Button = "//form/input[@type='submit']"

def wait_till_ell_is_present(ell)
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until {ell.displayed?}
end


