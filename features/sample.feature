Feature: As a user I want to test http://automationpractice.com so that I can search for t-shirts and blouses
    Scenario: Search for t-shirt
        Given Navigate to "http://automationpractice.com"
        And Wait for "Main search bar" with the "id" of "search_query_top" to appear
        Then I enter "t-shirt" to the "Main search bar"
        And Click on "Search Button" with the "xpath" of "id('searchbox')/button"
        And Wait for "First Result Element" with the "xpath" of "id('center_column')/ul/li/div/div[2]/h5/a" to contain text "Faded Short Sleeve T-shirts"

    Scenario: As a user I want to check the login
        Given Navigate to "https://www.facebook.com"
        Then I enter "earnshark@gmail.com" to the "Facebook Login Email" with the "id" of "email"
        And I enter "cubeisearnshark" to the "Facebook Login Password" with the "id" of "pass"
        Then Click on "Facebook Login Button" with the "xpath" of "//*[@id='u_0_2']"
        And Wait for "Facebook Profile Name" with the "xpath" of "//*[@id='u_0_a']/div[1]/div[1]/div/a/span/span" to contain text "EarnShark"

    Scenario: Search for blouse
        Given Navigate to "http://automationpractice.com"
        And Wait for "Main search bar" to appear
        Then I enter "Blouse" to the "Main search bar"
        And Click on "Search Button"
        And Wait for "First Result Element" to contain text "Blouse"

    Scenario: Search google for cats
        Given Navigate to "http://www.google.com"
        And Wait for "Google Main Search Text Box" with the "id" of "lst-ib" to appear
        Then I enter "Cats" to the "Google Main Search Text Box"
        And Click on "Search Button" with the "xpath" of "//*[@id='tsf']/div[2]/div[3]/center/input[1]"
        And Wait for "Second Result Element" with the "xpath" of "//*[@id='rso']/div[1]/div/div[2]/div/div/h3/a" to contain text "Cat"

