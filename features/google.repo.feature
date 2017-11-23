Feature: As a user I want to Test Google Search and use the repo
    Scenario: Search for cats
        Given Navigate to "https://www.google.com/ncr"
        And Wait for "Google Main Search Text Box" to appear
        Then I enter "Cat" to the "Google Main Search Text Box"
        When Click on "Google Search Button"
        And Wait for "Result Right Panel Title" to appear
        And I read the content of element "Result Right Panel Title" and store in variable "SearchResults" as a "string"
        Then The value in variable "SearchResults" of type "string" equals to "Cat"