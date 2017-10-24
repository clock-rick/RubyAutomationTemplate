# This area will contain required gems and pages.
require 'selenium-webdriver'
require_relative 'abstract_base_page'

# Enter in the url for the child page here.
@url_extension = 'Child Page url eg /contacts'

# This class will contain all the page definitions you want to create. The Class inherits from the AbstractBasePage
class HomePage < AbstractBasePage

  # Below is an example of a definition. This will contain the logic for whatever feature you create.
  def some_functionality

    # Declare any variables below.
    test_string = 'This is a string variable.'
    num1 = 2
    bool_1 = true

    # Capture WebElements here
    name_field = @driver.find_element(:id, 'form_223_0')

    # Enter logic below.
    name_field.action.send_keys('Joe Cool')
  end
end