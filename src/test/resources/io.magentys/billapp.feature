Feature: Provisioning of software

  Scenario Outline: Producing an installation script for OSX
    Given I am a Mac user with no software installed
    When I specify to install only <SOFTWARE>
    Then I receive an installation script for the specified software

  Examples:
    | SOFTWARE |
    | git      |
    | slack    |


   Scenario Outline: Software is already installed
     Given I am a Mac User and has <SOFTWARE> installed
     When I attempt to install only <SOFTWARE>
     Then I am notified that the software is already installed
   Examples:
     | SOFTWARE |
     | git      |
     | slack    |


    Scenario: Install multiple software for OSX
      Given I am a Mac User with no software installed
      When I specify to install git, slack
      Then I receive an installation script for the specified software




