Feature: Provisioning of software

  Scenario Outline: Producing an installation script for a new mac user
    Given I am a Mac user with no software installed
    When I specify to install only <SOFTWARE>
    Then I receive an installation script for the specified software

  Examples:
    | SOFTWARE |
    | git      |
    | slack    |


   Scenario Outline: Software is already installed on my mac
     Given I am a Mac User and has <SOFTWARE> installed
     When I attempt to install only <SOFTWARE>
     Then I receive an installation script that will skip the installation
   Examples:
     | SOFTWARE |
     | git      |
     | slack    |


    Scenario: Install multiple software for OSX
      Given I am a Mac User with no software installed
      When I specify to install git, slack
      Then I receive an installation script for the specified software




