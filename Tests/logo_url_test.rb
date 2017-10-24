require 'selenium-webdriver'
require 'chromedriver/helper'
require_relative '../Pages/home_page'

clicklogotest = HomePage.new(:chrome, @url_extension)
clicklogotest.logo_url_check
