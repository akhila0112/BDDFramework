Feature: To validate login Functionality of Adactin HotelApp
Background:
Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
@wip01
Scenario: To validate login using valid username and valid password


When user enters text "akhila011" in textbox using xpath "//input[@name='username']"
And user enters text "Akki@123" in textbox using xpath "//input[@name='password']"
And user clicks button using xpath  "//input[@name='login']"
Then user verify the title of page to be "Adactin.com - Search Hotel"

@regression @smoke @wip01
Scenario: To validate login using valid username and Invalid password


When user enters text "akhila011" in textbox using xpath "//input[@name='username']"
And user enters text "Akki@143" in textbox using xpath "//input[@name='password']"
And user clicks button using xpath  "//input[@name='login']"
Then user verify the presence of text using xpath"//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired.|
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"
