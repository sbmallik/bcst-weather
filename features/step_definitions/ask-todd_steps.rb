Given(/^I am viewing the Ask Todd sub section$/) do 
	expect(page).to have_css('.ask-todd')
end

Given(/^The Ask Todd a question module exists$/) do 
	expect(page).to have_css('.generic-iframe-title')
end

When(/^I enter the form data as below:$/) do | table |
	locate_iframe_elements do
                table.hashes .each do | hsh |
                        fill_in(hsh['field'], with: hsh['input'])
                end
	end
end

When(/^I click the "(.*?)" button$/) do | buttonname |
	locate_iframe_elements do
		find(:id, buttonname).click
	end
end

Then(/^I should see the message "(.*?)" on the page$/) do | message |
	locate_iframe_elements do
		expect(page).to have_css('.cbConfirmationMessages')	
	end
end
