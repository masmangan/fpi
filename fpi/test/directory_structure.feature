Feature: Creating a directory structure.
    As a user,
    I want my files to be stored in a directory structure
    so that in can be used to add another layer of organization.

Scenario: Using a target directory.
    Given a file path
        And a path to a directory
    When there's the need to create a new target file path
    Then the target directory will exist in the file system
        And it is a directory

Scenario: Using a target directory and a rule to create a directory
        structure
       | sequence  | meaning                                           |
       |    /      | marks a new directory level                       |
       |   %d%     | the day the image was created.                    |
       |   %m%     | the month number the image was created.           |
       |   %M%     | the month name abreviation the image was created. |
       |   %y%     | the two digit year the image was created.         |
       |   %Y%     | the four digit year the image was created.        |
       | %s:<val>% | a string "val".                                   |

    Given a file path
        And a path to a directory
        And a rule to create directory names
    When there's the need to create a new target file path
    Then the target directory will exist in the file system
        And it is a directory
        And there is a directory structure inside de target directory
            created with the directory naming rule.
