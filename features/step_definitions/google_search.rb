require 'spec'

# require 'firewatir'
# BROWSER = Watir::Firefox.new

require 'safariwatir'
BROWSER = Watir::Safari.new

PAGES = {
  'Google Homepage' => 'http://www.google.com/'
}

Given /^that I am on the (.*)$/ do |page_name|
  BROWSER.goto PAGES[page_name]
end

When /^I search for (.*)$/ do |query|
  BROWSER.text_field(:name, 'q').set(query)
  BROWSER.button(:name, 'btnG').click
end

Then /^I should see "([^\"]*)"$/ do |text|
  BROWSER.contains_text(text)
end
