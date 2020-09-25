Scenario: Sign Up

Given I am on the main application page
When I click on element located `//*[@href='/signup']`
When I enter `<email>` in field located `//*[@id="email"]`
When I click on all elements located `//*[@id="signup-submit"]`
When I enter `<name>` in field located `//*[@id="displayName"]`
When I enter `<password>` in field located `//*[@id="password"]`
When I click on element located `//*[@id="signup-submit"]`
Then the page with the URL 'https://trello.com/create-first-board' is loaded

Examples:
|email                             |name                      |password                                  |
|#{generate(Internet.email.Adress)}|#{generate(Name.fullName)}|#{generate(regexify '[abcdefjklmnoi]{8}')}|
|#{generate(Internet.email.Adress)}|#{generate(Name.fullName)}|#{generate(regexify '[abcdefjklmnoi]{8}')}|
|#{generate(Internet.email.Adress)}|#{generate(Name.fullName)}|#{generate(regexify '[abcdefjklmnoi]{8}')}|