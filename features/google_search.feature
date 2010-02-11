Feature: Google Search
   In order to find out more about Hurra Communications
   I need to be able to search Google
   
   Scenario: Google search for Hurra Communications
   Given that I am on the Google Homepage
   When I search for Hurra Communications
   Then I should see "Hurra.com - Hurra Communications Ltd"
   
   