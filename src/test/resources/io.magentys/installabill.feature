Feature: Provisioning of software

Graham is a Mac User with minimal technical knowledge, and has not previously installed software
Percy is a Mac User, with strong technical knowledge, and has previously installed software on applications


  Scenario Outline: Producing an installation script for git
    Given Graham is a Mac user with no software installed
    When Graham specifies to install only <git>
    Then Graham receives an installation script for git

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




