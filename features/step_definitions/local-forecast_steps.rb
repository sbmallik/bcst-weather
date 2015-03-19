Then(/^I should see the Local Forecast module$/) do
	expect(page).to have_css('.weather-station-location-module')
end

Given(/^The Local Forecast video thumbnail exists$/) do
	expect(page).to have_css('.video-container')
end

Then(/^The Local Forecast asset page displays$/) do
	expect(current_url).to match $expected_url
end

Given(/^The Local Forecast Module link exists$/) do
	expect(page).to have_css('.forecast')
end

Then(/^The timestamp exists$/) do
	expect(page).to have_css('.timestamp')
end

#When(/^I click the Local Forecast "(.*?)"$/) do | link_name |
#	@class_name = link_name.downcase == 'video' ? 'video-container' : 'outlook'
#	@page_element = find(".#{@class_name} a")
#	$expected_url = @page_element[:href]
#	@page_element.click
#end

def click_page_link(class_name)
	@page_element = find(class_name)
	$expected_url = @page_element[:href]
	@page_element.click
end

When(/^I click the Local Forecast video$/) do
	click_page_link('.video-container a')
end

When(/^I click the Local Forecast text$/) do
	click_page_link('.outlook a')
end
