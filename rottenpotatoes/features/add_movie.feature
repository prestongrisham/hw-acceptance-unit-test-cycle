Feature: Add Movie to the Database
 
  As an avid moviegoer
  So that I can quickly add a movie to the database
  I want to click add new movie, include details and save

Background: movies have been added to database
  
  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And I am on the RottenPotatoes home page

Scenario: add new movie to the database
  When I follow "Add new movie"
  And I should see "Create New Movie"
  And I fill in "Title" with "Wedding Crashers"
  And I press "Save Changes"
  And I should be on the home page
  Then I should see "More about Wedding Crashers"