@ignore @broadcast @weather @ask-todd
Feature: Ask Todd module allows user to submit a question through a web-form

Background: 
	Given I am on the "Weather/Ask-Todd" front in Broadcast site

Scenario: Fill up all fields and submit the question. Also check the page response.
	Given I am viewing the Ask Todd sub section
		And The Ask Todd a question module exists
	When I enter the form data as below:
| field | input |
| Name | Todd Alston |
| E-mail address | talston@gannett.com |
| City | McLean, VA |
| Question | How does the Alberta Clippers form? |
		And I click the "Submit" button
	Then I should see the message "Thanks for asking Todd a question! Todd answers questions every Tuesday and Thursday night on Fox 43 10 O'Clock News." on the page
