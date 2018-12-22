Before do
  if ENV["CHROME"]
    @browser = Selenium::WebDriver.for :chrome
  else
    @browser = Selenium::WebDriver.for :chrome, desired_capabilities: $caps
  end
  @domain = 'https://fullstackautomationwithruby.com'
end
