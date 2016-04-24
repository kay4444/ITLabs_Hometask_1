require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Top_Toolbar
  def click_My_Account_Link
    wait_till_ell_is_present(@my_Account_Link = @driver.find_element(:xpath, ::My_Account_Link))
    @my_Account_Link.click
  end

  def click_projects_link
    wait_till_ell_is_present(@projects_Link = @driver.find_element(:xpath, ::Projects_Link))
    @projects_Link.click
  end
end