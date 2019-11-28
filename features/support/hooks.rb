Before do
  if ENV["BROWSER"]
    @browser = Selenium::WebDriver.for ENV["BROWSER"].to_sym
    puts @browser.inspect
  else
    @browser = Selenium::WebDriver.for :chrome
  end
  puts @domain = ENV["DOMAIN"] || 'https://fullstackautomationwithruby.com'
  @widgets_index = WidgetsIndex.new(@browser, @domain)
end