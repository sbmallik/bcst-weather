Then(/^I should see the Right Now Weather module$/) do
	expect(page).to have_css('.right-now-weather-module')
end

Then(/^I should see the Right Now Weather location$/) do
	expect(page).to have_css('.right-now-weather-location')
end

Then(/^I should see "(.*?)" instances of Right Now Weather item$/) do | number_of |
	expect(page).to have_css('.right-now-weather-item', count: number_of)
end

Given(/^The More Weather button exists$/) do
	expect(page).to have_css('.ui-button-toggle-item')
end

When(/^I click the More Weather button$/) do
	find('.ui-button-toggle-item a').click
end

Then(/^The "(.*?)" front displays$/) do | front_name |
	step %{I am viewing the "#{front_name}" front}
end

Given(/^The Right Now Weather search icon exists$/) do
	expect(page).to have_css('.right-now-weather-search')
end

When(/^I click the Right Now Weather location icon$/) do
	click_page_link('.right-now-weather-location ~ a')
end

Then(/^The Location Search module displays$/) do
	step %{The Local Forecast asset page displays}
end
