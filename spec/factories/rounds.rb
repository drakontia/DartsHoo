FactoryGirl.define do
  factory :round do
    sequence(:roundno)
    reg01

    factory :round_70 do
      sequence(:roundno)
      shot1st "BULL"
      shot2nd "05D"
      shot3rd "10S"
    end

    factory :round_hat do
      sequence(:roundno)
      shot1st "BULL"
      shot2nd "BULL"
      shot3rd "BULL"
    end

    factory :round_just do
      roundno 5
      shot1st "BULL"
      shot2nd "19S"
      shot3rd "16D"
    end

    factory :round_burst do
      roundno 5
      shot1st "BULL"
    end

    factory :round_under do
      roundno 5
      shot1st "BULL"
      shot2nd "OUT"
      shot3rd "OUT"
    end
  end

end
