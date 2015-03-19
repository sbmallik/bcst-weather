Given(/^I am on the "(.*?)" front in Broadcast site$/) do | front_name |
        if front_name.downcase == 'home' then
                visit ui_url("/")
        else
                visit ui_url("/#{front_name.downcase}/")
        end
        wait_for_pageload
end

Given(/^I am viewing the "(.*?)" front$/) do | front_name |
        expect(page).to have_selector(:id, "section_#{front_name.downcase}")
end

def locate_iframe_elements
	page.driver.browser.switch_to.frame(page.driver.browser.find_element(:css, '.generic-iframe iframe'))
	yield
	page.driver.browser.switch_to.default_content
end

Then(/^I should see the following page elements:$/) do | table |
	locate_iframe_elements do
		table.hashes .each do | hsh |
			expect(page).to have_selector(:id, hsh['map-classes'])
		end
	end
end

Given(/^The Map Animation controls exists$/) do
	locate_iframe_elements do
		expect(page).to have_selector(:id, '__wxMap_anim')
	end
end

When(/^I click the "(.*?)" animation link$/) do | animation_type |
	locate_iframe_elements do
		find(:id, "__wxMap_#{animation_type.downcase}Mode").click
	end
end

When(/^I click the Skip "(.*?)" button$/) do | slider_direction |
	locate_iframe_elements do
		find(:id, "__wxMap_skip#{slider_direction.to_s[0]}").click
	end
end

Then(/^The Slider Pointer moves to "(.*?)"$/) do | slider_position |
	locate_iframe_elements do
		expect(find('.__wxMap_sliderHandle')[:style]).to match "left: #{slider_position.to_s}%;"
	end
end

Given(/^The Map quick-picks controls exists$/) do
	locate_iframe_elements do
		expect(page).to have_selector(:id, '__wxMap_qpGroup')
	end
end

When(/^I click the "(.*?)" quick-pick link$/) do | quickpick_type |
	locate_iframe_elements do
		find(:id, "__wxMap_#{quickpick_type}").click
	end
end

Then(/^The "(.*?)" element displays$/) do | fly_out |
	locate_iframe_elements do
		expect(page).to have_selector(:id, "__wxMap_#{fly_out}")
	end
end
