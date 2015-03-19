@ignore @broadcast @weather @weather-map
Feature: Local Forcast module should exist in Weather front for all Broadcast sites. 

Background: 
	Given I am on the "Weather" front in Broadcast site

@weather-map-elements
Scenario:
	Given I am viewing the "Weather" front
	Then I should see the following page elements:
| map-classes |
| __wxMap_UI |
| __wxMap_Map |
| __wxMap_anim |
| __wxMap_qpGroup |
| __wxMap_layers |
| __wxMap_legends |
| __wxMap_zoomWrap |


@map-animations
Scenario Outline: Verify the map animation controls
	Given The Map Animation controls exists
	When I click the "<animation_type>" animation link
		And I click the Skip "<slider_direction>" button
	Then The Slider Pointer moves to "<slider_position>"

Examples:
| animation_type | slider_direction | slider_position |
| Future | Forward | 9.09091 |
| Past | Backward | 90.9091 |

@map-quick-picks
Scenario Outline: Verify the map quick-picks controls
	Given The Map quick-picks controls exists
	When I click the "<quickpick_type>" quick-pick link
	Then The "<fly_out>" element displays

Examples:
| quickpick_type | fly_out |
| qpEdit | qpModal |
| layers | layersMenu |
| legends | legendsWrap |
