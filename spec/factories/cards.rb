FactoryGirl.define do
  factory :card do
    sequence(:card_name) { |n| "user#{n}" }
    sequence(:card_number) { |n| "#{n * 111111111111}" }
    stats01 80
    statscricket 2.5
    user
  end
end
