@ignore @broadcast @weather @right-now-weather
Feature: Verify the 'Right Now Weather' module located in the sidebar

Background: 
	Given I am on the "Home" front in Broadcast site

@right-now-weather-elements
Scenario:
	Given I am viewing the "Home" front 
	Then I should see the Right Now Weather module
		And I should see the Right Now Weather location
		And I should see "4" instances of Right Now Weather item 

@weather-front-link
Scenario:
	Given The More Weather button exists
	When I click the More Weather button
	Then The "Weather" front displays

@location-search-link
Scenario:
	Given The Right Now Weather search icon exists
	When I click the Right Now Weather location icon
	Then The Location Search module displays
