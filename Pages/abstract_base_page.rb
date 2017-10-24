class AbstractBasePage
  def initialize(browser, url_extension)
    @base_url = 'https://clockwork.com'
    @url_extension = url_extension
    @browser = browser
    @driver = Selenium::WebDriver::Driver.for @browser
    @driver.navigate.to @base_url + @url_extension
  end
end