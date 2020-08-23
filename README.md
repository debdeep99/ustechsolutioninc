# ustechsolutioninc
Us Tech Test

Python version used : 3.8.5
Django version used : 3.1
Database Postgres version used : 

1. Prerequisites

   All the prerequisites are written in 'requirements.txt'.
   
2. Short Description about this task

   Basically the task is based on creating teams and it's players. And the creation of match fixtures.
   The DB schema is written in models.py which is in an app named "teams".
   
   A) Team List : http://localhost:8000
       All the teams who are playing their name , logo and total points are listed over there. 
       
   B) Player List : http://localhost:8000/teamdetails/1
       All players name , logo and each team name are displayed over there.
       
   C) Match Fixture List : http://localhost:8000/match-fixtures/
      Total match fixtures are listed over there. Each team will play with another team twice (one home & one away). Each match will be 
      played on a conscutive date. There is a play button on each match fixture. After clicking on 'PLAY' button this system will pick
      a team randomly as winner and hence 2 points automatically added in a db table. 
      
   D) Creation of Match Fixture : http://localhost:8000/fixture/
      This function will generate the match fixture on total number of participants teams. This method have that much of inteligence to be
      produce a concrete match fixture based on the above said logic.
      
   E) I have registered three models into the Django admin panel . The models are "Team" , "Players" , "Countries" . Any admin user can add 
      sufficient number of entries on these tables.
      
      
   F) Unit Test :  In the 'test.py' I have intriduced a test class which consist of one setUp method , two test method and one teardown method
      for fullfillment of all the test cases.
      
      All the method names and variable names are self explanatory and written in camel casing format. So therefor I am uploading the total project
      along with db backup file and sql file.
