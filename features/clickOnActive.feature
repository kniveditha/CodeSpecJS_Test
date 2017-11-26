Feature: I want test clicking on a button Only when its active
    Scenario: is button active
        Given Navigate to "http://earnsharkbeta.com.s3-website-eu-west-1.amazonaws.com/login.html"
        Then I enter "nivedithak@99x.lk" to the "email" with the "xpath" of "//*[@id='body']/div[2]/div[2]/div[3]/div[2]/form/input[1]"
        And I enter "awesomeSauce97" to the "pass" with the "xpath" of "//*[@id='body']/div[2]/div[2]/div[3]/div[2]/form/input[2]"
        And Click on "Login Button" with the "xpath" of "//*[@id='body']/div[2]/div[2]/div[3]/div[2]/form/button" when active
        And Click on "analytics" with the "xpath" of "/html/body/div[3]/section/div[1]/div/div/div[2]/div/button[1]" when active
        Then Wait for "3" seconds
