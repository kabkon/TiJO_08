Feature: Filter page
  Scenario: Search case
    When I browse to the "/"
    When I enter "app" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Knapp"
    Then I should see "Knapp" in "firstName" column in row "1" of "student.table" table
    When I enter "21" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "24"
    Then I should see "gray.rose@undefined.io" in "email" column in row "2" of "student.table" table
    When I enter "gutierrez.freeman" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (944) 430-2322"
    Then I should see "Freeman" in "lastName" column in row "1" of "student.table" table

   Scenario: FirstName search case
     When I browse to the "/"
     When I enter "Ch" into "input.first" field
     Then the css element "td:nth-of-type(1)" should contain the text "Chang"
     Then I should see "+1 (994) 534-3669" in "phone" column in row "1" of "student.table" table
     When I enter "Gray" into "input.first" field
     Then the css element "td:nth-of-type(3)" should contain the text "21"
     Then I should see "Rose" in "lastName" column in row "1" of "student.table" table

  Scenario: Phone search case
    When I browse to the "/"
    When I enter "7" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "Rose" in "lastName" column in row "4" of "student.table" table