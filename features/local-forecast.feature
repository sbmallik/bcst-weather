@ignore @broadcast @weather @local-forecast
Feature: Local Forcast module should exist in Weather front for all Broadcast sites. 

Background: 
	Given I am on the "Weather" front in Broadcast site

@local-forecast-elements
Scenario:
	Given I am viewing the "Weather" front 
	Then I should see the Local Forecast module

@video-thumbnail-link
Scenario:
	Given The Local Forecast video thumbnail exists
	When I click the Local Forecast video
	Then The Local Forecast asset page displays

@text-link
Scenario:
	Given The Local Forecast Module link exists
		And The timestamp exists
	When I click the Local Forecast text
	Then The Local Forecast asset page displays
