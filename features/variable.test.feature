Feature: As a user I want to Test Google Search and use the repo
    Scenario: Search for cats
        Given Navigate to "https://www.google.com/ncr"
        And Wait for "Google Main Search Text Box" with the "id" of "lst-ib" to appear
        Then I enter "Cat" to the "Google Main Search Text Box"
        When Click on "Search Button" with the "xpath" of "//*[@id='tsf']/div[2]/div[3]/center/input[1]"
        And Wait for "Result Right Panel Title" with the "xpath" of "//*[@id='rhs_title']/span" to appear
        And I read the content of element "Result Right Panel Title" and store in variable "SearchResults" as a "string"
        Then The value in variable "SearchResults" of type "string" equals to "Cat"