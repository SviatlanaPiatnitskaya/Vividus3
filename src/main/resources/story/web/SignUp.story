Description: Sigh Up story

Scenario: Open application Trello.com
Given I am on the main application page

Scenario: Verify page title
Then the page title is equal to 'Trello'

//Scenario: Creating users using ‘Examples tables’
//When I click on element located `By.xpath(//*[@class="float-right buttons"]/a[2])`
//When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
//When I click on element located `By.xpath(//*[@id="signup-submit"])`
//Then the page title is equal to 'Sign up - Log in with Atlassian account'
//When I enter `<name>` in field located `By.xpath(//*[@id="displayName"])`
//When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
//When I click on element located `By.xpath(//*[@id="signup-submit"])`
//Then the page with the URL 'https://trello.com/create-first-team' is loaded

Examples:
|email|password|name|
|km0312345@gmail.com|358nomiliF|ALex|
|om0312345@gmail.com|358nomiliM|Mr Smith|
|ss0312345@gmail.com|358nomiliK|Mr Andersen|

Scenario: Set up some sign up values using expressions
Given I am on the main application page

When I click on element located `By.xpath(//*[@class="float-right buttons"]/a[2])`
When I enter `#{generate(regexify'[a-z]{7}')}@gmail.com` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Then the page title is equal to 'Sign up - Log in with Atlassian account'
When I enter `#{generate(Name.firstName')}` in field located `By.xpath(//*[@id="displayName"])`
When I enter `#{generate(regexify'[a-z]{10}')}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Then the page with the URL 'https://trello.com/create-first-team' is loaded
