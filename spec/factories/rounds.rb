FactoryGirl.define do
  factory :round do
    sequence(:roundno)
    shot1st "BULL"
    shot2nd "05D"
    shot3rd "05S"
    reg01

    factory :round_just do
      roundno 10
      shot1st "BULL"
      shot2nd "07S"
      shot3rd "07D"
    end

    factory :round_burst do
      roundno 10
      shot1st "BULL"
      shot2nd "20T"
      shot3rd "NONE"
    end

    factory :round_under do
      roundno 10
      shot1st "BULL"
      shot2nd "OUT"
      shot3rd "OUT"
    end
  end

end
