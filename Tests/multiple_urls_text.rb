require 'selenium-webdriver'
require 'chromedriver/helper'
require_relative '../Pages/rename_this_page'
require_relative './config'

test_runner = RenameThisPage.new(:chrome, @url_extension)

@url_extensions_actions.each do |extenstion, action|
  test_runner.change_url(extension)
  test_runner.instance_eval(action)
end
