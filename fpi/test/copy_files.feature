Feature: Copy files for ingestion.
    As a user,
    I want to copy files from their original locations before
        ingesting the media files to the system,
    so that the directory structure is used as part of the organization.

Scenario: Copy files.
    Given a file path and a target directory
    When files should be copied to a different location
    Then there should be a copy of the file in the target directory
    And a copy of the file original file
