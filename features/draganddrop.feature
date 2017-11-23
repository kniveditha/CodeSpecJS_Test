Feature: Drag and drop elements
    Scenario: This is a sample to show drag and drop
        Given Navigate to "http://demoqa.com/droppable/"
        And Wait for "Draggable Object" to appear
        Then I drag "Draggable Object" and drop on to "Droppable Object"
        And Wait for "Dropped Message" to contain text "Dropped!"