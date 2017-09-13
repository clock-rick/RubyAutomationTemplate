# This area will contain required gems and pages.
require 'selenium-webdriver'
require_relative 'abstract_base_page'

# This class will contain all the page definitions you want to create. The Class inherits from the AbstractBasePage
class RenameThisPage < AbstractBasePage

  # Web Elements that are shared between pages, like header or navigation can be defined
  # as functions at the class level.
  def name_field_1
    name_field = @driver.find_element(:id, 'form_223_0')
  end
  # Below is an example of a definition. This will contain the logic for whatever feature you create.
  def some_functionality

    # Declare any variables below.
    test_string = 'This is a string variable.'
    num1 = 2
    bool_1 = true

    # Enter logic below.
    name_field_1.action.send_keys(test_string)

    # verify the result here
  end

  def other_functionality
    test_sting = '' # test an empty string
    name_field_1.action.send_keys(test_string)
    name_field_1.action.submit

    # verify the result here
    validation_message = "You must fill out the field"
    result = @driver.page_source.includes?(validation_message)
    puts "Result for empty_string test = #{result}"
  end
end