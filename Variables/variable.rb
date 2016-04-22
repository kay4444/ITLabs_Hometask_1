require 'selenium-webdriver'

# Home Page

Register_Link = "//li/a[@href='/account/register']"
Sign_In_Link = "//li/a[@class='login']"

# Top Toolbar
My_Account_Link = "//li/a[@class='my-account' and @href='/my/account']"
Projects_Link = "//a[@href='/projects']"

#  Registration Form
Login_Textbox = "//p/input[@id='user_login']"
Password_Textbox = "//p/input[@id='user_password']"
Confirmation_Textbox = "//p/input[@id='user_password_confirmation']"
First_Name_Textbox = "//p/input[@id='user_firstname']"
Last_Name_Textbox = "//p/input[@id='user_lastname']"
Email_Textbox = "//p/input[@id='user_mail']"
Submit_Button = "//form/input[@type='submit']"
Registration_Confirmation_Messqage = "//div[@id='flash_notice']"

#  Login Page
Login_1_textbox = "//td/input[@id='username']"
Password_1_Textbox = "//td/input[@id='password']"
Login_Button = "//td/input[@type='submit']"

#  My Page
User_Is_Signed = "//a[@class='user active']"
Passowr_Is_Changed_Notification = "//div[@id='flash_notice']"

# My Account Page
Change_Password_Link = "//a[@href='/my/password']"

# Change Password Page
Password_2_Textbox= "//div/p/input[@id='password']"
New_Passwprd_Textbox = "//input[@id='new_password']"
Confirmation_1_Textbox = "//input[@id='new_password_confirmation']"
Apply_Button = "//input[@name='commit']"

#  Projects page
New_Project_Link = "//a[@href='/projects/new']"
Search_Field = "//input[@id='q']"

#  New Project Form
Name_Textbox = "//input[@id='project_name']"
Identifier_Textbox = "//input[@id='project_identifier']"
Create_Button = "//input[@value='Create']"
Successful_Creation_Message = "//div/div[@id='flash_notice' and @class='flash notice']"
Save_Button = "//form/input[@type='submit' and @value='Save']"

# Project Details
Settings_Tab = "//a[@class='settings']"
Members_SubTab = "//a[@id='tab-members']"
New_Member_Button = "//a[@href='/projects/my_project/memberships/new']"
Search_For_User_Search_Field = "//input[@id='principal_search']"
# Proper_User_in_the_list "//div[@id='principals_for_new_member']/div/div/label[text() = ' ADI NARAYANA']"

Manager_Role = "//fieldset[@class='box']/div[@class='roles-selection']/label[text() = ' Manager']"
Developer_Role = "//fieldset[@class='box']/div[@class='roles-selection']/label[text() = ' Developer']"
Reporter_Role = "//fieldset[@class='box']/div[@class='roles-selection']/label[text() = ' Reporter']"

Add_Button = "//input[@id='member-add-submit']"
Edit_Button_For_Proper_User = "//tr[.//a[@class='user active' and text()='Kay Kay']]//a[@class='icon icon-edit' and text()='Edit']"
Save_1_Button = "//form/p[2]/input[@value='Save' and @class='small' and @type='submit' and @name='commit']"

Versions_Tab = "//a[@id='tab-versions']"
New_Version_BUtton = "//a[@class='icon icon-add' and @href='/projects/my_project_1/versions/new?back_url=']"
Version_Name_Textbox = "//input[@id='version_name']"
Submit_Version_Button = "//input[@type='submit']"
Successful_Version_Creation_Message = "//div[@id='flash_notice' and @class='flash notice']"

New_Issues_Tab = "//a[@class='new-issue']"
Tracker_Issue_Type = "//select[@id='issue_tracker_id']" # Bug item is selected by default
Track_Issue_Type_Support = "//select[@id='issue_tracker_id']/option[text()='Support']"
Subject_Text_Field = "//input[@id='issue_subject']"
Status_Drop_Down = "//select[@id='issue_status_id']"
Status_Drop_Down_Item_New = "//select[@id='issue_status_id']/option[text()='New']"
Priority_Drop_Down = "//select[@id='issue_priority_id']"
Priority_Drop_Down_Item_Normal = "//select[@id='issue_priority_id']/option[text()='Normal']"
Create_1_Button = "//input[@name='commit']"
Message_About_Successful_Issue_Ceation = "//div[@id='flash_notice' and @class='flash notice' and contains(.,'created')]"
Number_Of_Created_Issue = "//div[@id='flash_notice' and @class='flash notice']/a"
Issue_Tab = "//a[@href='/projects/my_project_1/issues' and text()='Issues']"
Issue_Item_In_List = "//tr/td[contains(.,'131314')]"


def wait_till_ell_is_present(ell)
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until {ell.displayed?}
end


