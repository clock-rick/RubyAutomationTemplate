require 'selenium-webdriver'
require 'chromedriver/helper'
require_relative '../Pages/home_page'

rename_page = HomePage.new(:chrome, @url_extension)
rename_page.some_functionality
