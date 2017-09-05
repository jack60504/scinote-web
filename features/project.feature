# feature/project. feature
Feature: Project
  As a creator of team
  I want to navigate to other my team
  I want to navigate through a sciNote

Background:
Given the following users is registered:
 | name                 | email              | password        | team                 | role        |
 |Karli Novak (creator)| nonadmin@myorg.com | mypassword1234  | BioSistemika Process | Administrator|
 |Karli Novak         | nonadmin@myorg.com   | mypassword1234  | BioSistemika Path |  Normal user |

 Scenario: Successful change a team view
   Given home page of BioSistemika Path team of a Karli Novak user
   And I click to "BioSistemika Path" name
   And I click to "BioSistemika Process" in team dropdown menu
   Then I should see "You are working on BioSistemika Process now!" flash message

 Scenario: Successful return to home page
   Given My profile page of a Karli Novak user
   And I click to "Home" icon
   Then I am on home page of BioSistemika Process team of a Karli Novak user

 Scenario: Successful navigate to Protocol management page
   Given My profile page of a Karli Novak user
   And I click to "Protocol management" icon
   Then I am on Protocol management page of BioSistemika Process team of a Karli Novak user

 Scenario: Successful navigate to Repositories page
   Given My profile page of a Karli Novak user
   And I click to "Repositories" icon
   Then I am on Repositories page of BioSistemika Process team of a Karli Novak user

 Scenario: Successful navigate to Activities page
   Given My profile page of a Karli Novak user
   And I click to "Activities" icon
   Then I am on Activities page of BioSistemika Process team of a Karli Novak user

 Scenario: Successful navigate to Premium page
  Given My profile page of a Karli Novak user
  And I click to "i" icon
  And I click to "Premium" in "i" menu
  Then I am on "https://scinote.net/premium/" page

Scenario: Successful navigate to Premium page
  Given My profile page of a Karli Novak user
  And I click to "i" icon
  And I click to "About sciNote" in "i" menu
  Then I should see "About sciNote" modal window
