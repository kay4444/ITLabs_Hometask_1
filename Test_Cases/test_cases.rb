require 'test/unit'
require_relative '../Pages/login_page'
require_relative '../Pages/registration_form'
require_relative "../Settings/main_settings"
require_relative "../Pages/home_page"
require_relative "../Pages/my_page"
require_relative "../Pages/top_toolbar"
require_relative "../Pages/my_account_page"
require_relative "../Pages/proj_page"
require_relative "../Pages/change_password_page"


class Test_Cases < Test::Unit::TestCase

  include Login_Page
  include Registration_Form
  include Main_settings
  include Home_Page
  include My_Page
  include Top_Toolbar
  include ProjPage
  include My_Account_Page
  include Change_Password_Page

  def test_cereate_project_version
    project_name = "My_Project_1"

    click_sign_in_link
    perform_login
    check_user_is_signed
    click_projects_link
    find_and_navigate_to_project(project_name)
    cereate_project_version
  end

  # def test_user_role
  #   project_name = "My_Project_1"
  #
  #   click_sign_in_link
  #   perform_login
  #   check_user_is_signed
  #   click_projects_link
  #   find_and_navigate_to_project(project_name)
  #   edit_users_role("Kay", "Developer")
  # end
  #
  # def test_add_user_to_project
  #   project_name = "My_Project"
  #
  #   click_sign_in_link
  #   perform_login
  #   check_user_is_signed
  #   click_projects_link
  #   find_and_navigate_to_project(project_name)
  #   # Role can be just: "Manager" or "Developer" or "Reporter"
  #   add_user_to_project_method("Serhii Kay", "Developer")
  #
  # end
  #
  # def test_create_new_project
  #   click_sign_in_link
  #   perform_login
  #   check_user_is_signed
  #   click_projects_link
  #   click_new_project_link
  #   fill_fields_for_new_project ("My_Project" + rand(999999).to_s)
  #   check_if_project_is_created
  # end
  #
  # def test_create_new_user
  #   # Create new User checking
  #   click_register_link
  #   fill_fields
  #   click_Submit_Button
  #   verify_user_is_registered
  #   # Change password checking
  #   click_My_Account_Link
  #   click_change_password_link
  #   change_password
  #   verify_that_password_was_changed
  # end
  #
  # def test_sign_in
  #   click_sign_in_link
  #   perform_login
  #   check_user_is_signed
  # end

end