FactoryGirl.define do
  factory :card do
    sequence(:card_name) { |n| "user#{n}" }
    sequence(:card_number) { |n| "#{n * 111111111111}" }
    user
    #card_name "user1"
    #card_number 111122223333
  end
end
