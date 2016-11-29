Feature: 01 reg appear status of 01 game.
	Background:
		Given you are User.
		Given User has Reg.

	Scenario: User complete 701 of 01 game.
		When User starts 01 Reg.
		And User select 701 count of reg.
		And User score 567 until 7 rounds.
		And User score 701 at 9 rounds.
		Then Reg is completed.
		And this stat is 81.

	Scenario: User do burst in 701 of 01 game.
		When User starts 01 Reg.
		And User select 701 count of reg.
		And User score 650 at 8 rounds and score 57 at 25th shot.
		Then Reg appear burst.
		And Reg appear next round.

	Scenario: User do not complete 701 of 01 game.
		When User starts 01 Reg.
		And User select 701 count of reg.
		And User score 450 in 15 rounds.
		Then Reg is finished.
		And this stats is 30.
