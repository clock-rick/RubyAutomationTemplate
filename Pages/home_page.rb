# This area will contain required gems and pages.
require 'selenium-webdriver'
require_relative 'abstract_base_page'
require 'colorize'

# Enter in the url for the child page here.
@url_extension = '/'

# This class will contain all the page definitions you want to create. The Class inherits from the AbstractBasePage
class HomePage < AbstractBasePage

  # Below is an example of a definition. This will contain the logic for whatever feature you create.
  def logo_url_check


    # Declare any variables below.
    logo_url = 'https://clockwork.com/'


    # Capture WebElements here
    clockwork_logo = @driver.find_element(:id, 'logo')

    # Enter logic below.
    clockwork_logo.click
    logo_current_url = @driver.current_url.to_s
    if logo_current_url == logo_url
      puts 'TEST PASS'.green + " logo directed to #{logo_current_url}"
    else
      puts 'TEST FAIL'.red + " logo directed to #{logo_current_url}"
    end

  end
end