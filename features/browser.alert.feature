Feature: Show the browser alert handling capabilities
    Scenario: Handle Browser alerts
        Given Navigate to "https://www.w3schools.com/code/tryit.asp?filename=FKMHEPDMWC4B"
        And Click on "Run Script"
        Then Wait for "Result Window" to appear
        Then Switch to iframe "Result Window"
        And Click on "Alert Button"
        Then The alert message says "Hello! I am an alert box!"
        And Accept the confirmation alert
        Then Click on "Confirm Button"
        And Accept the confirmation alert
        Then Element "Browser Results" contains text "I'm Sure!"
        When Click on "Confirm Button"
        Then I Dismiss the confirm dialog
        And Element "Browser Results" contains text "Not Sure!!"
        When Click on "Prompt Button"
        And I enter "Nivay" into prompt
        And Accept the confirmation alert
        Then Element "Browser Results" contains text "Hello Nivay! How are you today?"