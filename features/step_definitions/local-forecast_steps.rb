Given(/^I am on the "(.*?)" front in Broadcast site$/) do | front_name |
	visit ui_url("/#{front_name.downcase}/")
	wait_for_pageload
end

Given(/^I am viewing the "(.*?)" front$/) do | front_name |
	expect(page).to have_selector(:id, "section_#{front_name.downcase}")
end

Then(/^I should see the Local Forecast module$/) do
	expect(page).to have_css('.weather-station-location-module')
end

Given(/^The Local Forecast video thumbnail exists$/) do
	expect(page).to have_css('.video-container')
end

When(/^I click the Video thumbnail$/) do
	@page_element = find('.video-container a')
	$expected_url = @page_element[:href]
	@page_element.click
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

When(/^I click the Local Forecast "(.*?)"$/) do | link_name |
	@class_name = link_name.downcase == 'video' ? 'video-container' : 'outlook'
	@page_element = find(".#{@class_name} a")
	$expected_url = @page_element[:href]
	@page_element.click
end

