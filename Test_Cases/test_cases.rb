require 'test/unit'
require_relative '../Pages/login_page'
require_relative '../Pages/registration_form'
require_relative "../Settings/main_settings"
require_relative "../Pages/home_page"

class Test_Cases < Test::Unit::TestCase

  include Login_Page
  include Registration_Form
  include Main_settings
  include Home_Page

  def test_create_new_user
    click_register_link
    fill_fields
    click_Submit_Button
    verify_user_is_registered
  end

  def test_sign_in
    click_sign_in_link
    perform_login
  end

end