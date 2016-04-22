require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module ProjPage
  include Main_settings

  def click_new_project_link
    wait_till_ell_is_present(@new_Project_Link = @driver.find_element(:xpath, ::New_Project_Link))
    @new_Project_Link.click
  end

  def fill_fields_for_new_project (project_name)
    sleep 3
    wait_till_ell_is_present(@name_Textbox = @driver.find_element(:xpath, ::Name_Textbox))
    @identifier_Textbox = @driver.find_element(:xpath, ::Identifier_Textbox)
    @create_Button = @driver.find_element(:xpath, ::Create_Button)

    @name_Textbox.send_key (project_name)
    pn = project_name.downcase
    sleep 2
    itt = @identifier_Textbox['value']  # to get text from textbox use construction: element['value']
    puts (pn)
    puts (itt)
    assert_equal(itt, pn)

    @create_Button.click
  end

  def check_if_project_is_created
    wait_till_ell_is_present(@successful_Creation_Message = @driver.find_element(:xpath, ::Successful_Creation_Message))
    assert (@successful_Creation_Message.displayed?)
  end

  def find_and_navigate_to_project(project_name)
    sleep(2)
    wait_till_ell_is_present(@search_Field = @driver.find_element(:xpath, ::Search_Field))
    @search_Field.send_key(project_name)
    @search_Field.submit                     # Press Enter key
    wait_till_ell_is_present(@desired_project = @driver.find_element(:xpath, "//dt/a/span[@class='highlight token-0' and text()='" + project_name + "']"))
    assert (@desired_project.displayed?)
    @desired_project.click
  end

  def add_user_to_project_method(user_name, role)
    wait_till_ell_is_present(@settings_Tab = @driver.find_element(:xpath, ::Settings_Tab))
    @settings_Tab.click
    @members_SubTab = @driver.find_element(:xpath, ::Members_SubTab)
    @members_SubTab.click
    @new_Member_Button = @driver.find_element(:xpath, ::New_Member_Button)
    @new_Member_Button.click
    @search_For_User_Search_Field = @driver.find_element(:xpath, ::Search_For_User_Search_Field)
    @search_For_User_Search_Field.send_key(user_name)
    sleep (2)
    @proper_user = @driver.find_element(:xpath, "//div[@id='principals_for_new_member']/div/div/label[text() = ' " + user_name + "']")
    @proper_user.click
    if (role != "Manager" or role != "Developer" or role != "Reporter")
      puts ("Incorrect User's Role is choosen")
    end
    @user_role = @driver.find_element(:xpath, "//fieldset[@class='box']/div[@class='roles-selection']/label[text() = ' " + role + "']")
    @user_role.click
    @add_Button = @driver.find_element(:xpath, ::Add_Button)
    @add_Button.click
    @user_is_added_successfully = @driver.find_element(:xpath, "//a[@class='user active' and text()='" + user_name + "']")
    assert(@user_is_added_successfully.displayed?)
  end

  def edit_users_role(user, role)

    user_name = user + " " + user
    sleep (1)
    wait_till_ell_is_present(@settings_Tab = @driver.find_element(:xpath, ::Settings_Tab))
    @settings_Tab.click
    sleep (1)
    @members_SubTab = @driver.find_element(:xpath, ::Members_SubTab)
    @members_SubTab.click
    sleep (1)
    @edit_button_for_proper_user = @driver.find_element(:xpath, "//tr[.//a[@class='user active' and text()='" + user_name + "']]//a[@class='icon icon-edit' and text()='Edit']")
    @edit_button_for_proper_user.click
    sleep (1)
    # @desired_role_for_proper_user = @driver.find_element(:xpath, "//tr[.//a[@class='user active' and text()='" + user + "']]//p/label[contains(.,'" + role + "')]")
    # selected checkbox "//tr[.//a[@class='user active' and text()='Kay Kay']]//p/label[contains(.,'Reporter') and input[@checked='checked']]"
    @checkbox_for_proper_role_of_proper_user = @driver.find_element(:xpath, "//tr[.//a[@class='user active' and text()='" + user_name + "']]//p/label[contains(.,'" + role + "') and input[@type='checkbox']]")
    # state = @checkbox_for_proper_role_of_proper_user.attribute('checked').nil?                 # Checking if ceck box is checked
    # @checkbox_for_proper_role_of_proper_user.click unless state==true                         # Checking if ceck box is checked
    state = @checkbox_for_proper_role_of_proper_user.selected?
    if(state===true)
      puts ('Check box is selected')
    else
      @checkbox_for_proper_role_of_proper_user.click
    end
    # @checkbox_for_proper_role_of_proper_user.each { |e| e.click if e.attribute('checked').nil?}
    sleep (1)
    @save_1_Button = @driver.find_element(:xpath, ::Save_1_Button)
    @save_1_Button.click
    sleep (1)
    @selected_role_applyed = @driver.find_element(:xpath, "//tr[.//a[text()='" + user_name + "']]//span[contains(.,'" + role + "')]")
    assert(@selected_role_applyed.displayed?)
  end

  def create_project_version
    wait_till_ell_is_present(@settings_Tab = @driver.find_element(:xpath, ::Settings_Tab))
    @settings_Tab.click
    sleep (1)
    @versions_Tab = @driver.find_element(:xpath, ::Versions_Tab)
    @versions_Tab.click
    sleep (1)
    @new_Version_BUtton = @driver.find_element(:xpath, ::New_Version_BUtton)
    @new_Version_BUtton.click
    sleep (1)
    @version_Name_Textbox = @driver.find_element(:xpath, ::Version_Name_Textbox)
    @version_Name_Textbox.send_key("Kay" + rand(999999).to_s)
    sleep (1)
    @submit_Version_Button = @driver.find_element(:xpath, ::Submit_Version_Button)
    @submit_Version_Button.click
    sleep (1)
    @successful_Version_Creation_Message = @driver.find_element(:xpath, ::Successful_Version_Creation_Message)
    assert(@successful_Version_Creation_Message.displayed?)
  end

  @@massive = Array[]

  def create_issue (type)
    @sub = "Kay Issue " + rand(999999).to_s
    sleep 2
    @new_Issues_Tab = @driver.find_element(:xpath, ::New_Issues_Tab)
    @new_Issues_Tab.click
    sleep 1
    @tracker_Issue_Type = @driver.find_element(:xpath, ::Tracker_Issue_Type)
    @tracker_Issue_Type.click
    sleep 1
    @select_desired_issue_type = @driver.find_element(:xpath, "//select[@id='issue_tracker_id']/option[text()='" + type + "']")
    @select_desired_issue_type.click
    sleep 1
    @subject_Text_Field = @driver.find_element(:xpath, ::Subject_Text_Field)
    @subject_Text_Field.send_key(@sub)
    sleep 1
    @create_1_Button = @driver.find_element(:xpath, ::Create_1_Button)
    @create_1_Button.click
    sleep 2
    @message_About_Successful_Issue_Ceation = @driver.find_element(:xpath, ::Message_About_Successful_Issue_Ceation)
    assert (@message_About_Successful_Issue_Ceation.displayed?)
    @number_Of_Created_Issue = @driver.find_element(:xpath, ::Number_Of_Created_Issue)
    ell = @number_Of_Created_Issue.text
    @@massive.push(ell)
  end

  def checking_that_Issues_are_presented
    @issue_Tab = @driver.find_element(:xpath, ::Issue_Tab)
    @issue_Tab.click
    i=0
    while(i<3)
      el = @@massive[i].to_s
      ell = el.delete("#")
      elll = @driver.find_element(:xpath, "//tr/td[contains(.,'" + ell + "')]")
      assert(elll.displayed?)
      i = i+1
    end
  end

end