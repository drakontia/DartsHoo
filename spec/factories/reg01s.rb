FactoryGirl.define do
  factory :reg01 do
    sequence(:regno)
    gametype "01game"
    number01 701
    #user
    #game

    factory :reg01_with_rounds do
      transient do
        round_count 9
      end

      after(:create) do |reg, evaluator|
        create_list(:round,
                    evaluator.round_count,
                    { shot1st: "BULL",
                    shot2nd: "05D",
                    shot3rd: "05S",
                    reg01: reg })
      end
    end
  end
end
