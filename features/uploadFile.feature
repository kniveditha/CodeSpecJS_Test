Feature: I want test uploading a file
    Scenario: upload image without selection
        Given Navigate to "https://www.jqueryscript.net/demo/Image-Upload-Preview-Plugin-With-jQuery-Bootstrap-img-upload/"
        Then I Upload "C:\Users\Asus\Desktop\doggie.jpg" to "uploadbutton" with the "xpath" of "/html/body/div[2]/form/div/div/div[2]/div/span[1]/input"
        Then Wait for "5" seconds