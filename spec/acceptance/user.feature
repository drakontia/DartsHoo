Feature: User starts DartsHoo!
  Backgroud:
    Given you are User

  Scenario: User can sign up at DartsHoo!.
		When visit top as non-registered user.
		And Click signup button
		And Insert name and password
		And Click save button
		Then complete successfully sign up
		And user dashboard is appeartd

  Scenario: User can login with inserting name and password.
    When visit top
    And Insert name and password
    And Click login button
    Then User's dashboard is appeared.
    And Rating is appeared.
    And 01 stats is appeared.
    And Cricket stats is appeared.

  Scenario: User can create 01 game reg
    When User clicks reg bottun
    And User selects reg type with 01 game
    Then 01 game reg is started.
    When User throws 10 rounds.
    And User complete 01 game.
    Then save the reg.

  Scenario: User can create cricket game reg
    When click reg bottun
    And Select reg type with cricket game
    Then cricket game reg is started.
    When throw 10 rounds.
    And complete 01.
    Then save the reg.

  Scenario: User can create game with 3 regs.
    When click new game bottun.
    And select 3 of reg number.
    Then create new game with 3 regs.

  Scenario: User can create game with 5 regs.
    When click new game button.
    And select 5 of reg number.
    Then create new game with 5 regs.

  Scenario: User have only 30 regs for 01 games.
    When create 31th regs.
    Then system delete oldest 01 game reg.
    And the game that had oldest reg has not the one.
    But the game still have the game result.

  Scenario: User have only 30 regs for cricket games.
    When create 31th regs.
    Then system delete oldest cricket game reg.
    And the game that had oldest reg has not the one.
		And reculculate user cricket stats.
		And reculculate user rating.
    But the game still have the game result.
