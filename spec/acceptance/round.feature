Feature: Round has 3 shots and total score
	Background:
		Given you are User.
		Given User has a reg as 01 game.
		Given User has a reg as cricket game.

	Scenario: Round shows total score of 01 game.
		When The reg is 01 game.
		And User shot 3 single at first.
		And User shot triple 15 at second.
		And User shot Bull at third.
		Then Round show 98 points as result.
	
	Scenario: Round show total score of cricket game.
		When The reg is cricket game.
		And User marked twice at 18 in previous shot.
		And User shot triple 18 at first.
		And User shot double 20 at second.
		And User shot out of board at third.
		Then User get 36 points and 2 marks at 20.

	Scenario: Round appear end of 01 game.
		When Reg has 60 points as rest of 01 game.
		And User shot single 15 at first.
		And User shot single 13 at second.
		And User shot double 16 at third.
		Then the reg is over.

	Scenario: Round appear end of 01 game at second shot.
		When Reg has 43 points as rest of 01 game.
		And User shot single 11 at first.
		And User shot double 16 at second.
		Then Round record no shot at third.
		And the Reg is over.

	Scenario: Round appear burst of 01 game at second shot.
		When Reg has 30 points as rest of 01 game.
		And User shot single 11 at first.
		And User shot double 16 at second.
		Then Round record busrt.
		And Round record no shot at third.
		And the Round is over.
