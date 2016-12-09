FactoryGirl.define do
  factory :round do
    sequence(:roundno)
    reg01

    factory :round_hat do
      sequence(:roundno)
      shot1st "BULL"
      shot2nd "BULL"
      shot3rd "BULL"
    end

    factory :round_none do
      sequence(:roundno)
      shot1st "OUT"
      shot2nd "OUT"
      shot3rd "OUT"
    end
  end

end
