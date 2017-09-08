require 'selenium-webdriver'
require 'chromedriver/helper'
require_relative '../Pages/rename_this_page'

rename_page = RenameThisPage.new(:chrome, @url_extension)
rename_page.some_functionality
