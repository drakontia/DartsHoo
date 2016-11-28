Feature: Game show a result.
	Background:
		Given you are User.

	Scenario: Game is started.
		When User starts Game.
		And User select number of regs.
		Then Game has no reg.

	

