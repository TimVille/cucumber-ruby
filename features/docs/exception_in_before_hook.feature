Feature: Exception in Before Block

  In order to know with confidence that my before blocks have run OK
  As a developer
  I want exceptions raised in Before blocks to be handled gracefully and reported by the formatters

  Background:
    Given the standard step definitions
    And a file named "features/support/env.rb" with:

  @BDD-4 @OPEN @spawn @todo-windows
  Scenario: Handle Exception in standard scenario step and carry on
    Given a file named "features/naughty_step_in_scenario.feature" with:
    
    When I run `cucumber features`
    Then it should fail with:
    

  @ORPHAN @todo-windows
  Scenario: Handle Exception in Before hook for Scenario with Background
    Given a file named "features/naughty_step_in_before.feature" with:
    
    When I run `cucumber features`
    Then it should fail with exactly:
    

  @ORPHAN @todo-windows
  Scenario: Handle Exception using the progress format
    Given a file named "features/naughty_step_in_scenario.feature" with:
    
    When I run `cucumber features --format progress`
    Then it should fail with:
    
