FactoryGirl.define do
  factory :user do
    user_name 'John Doe'
    email 'john@example.com'
    password_digest 'password'
    password_confirmation 'password'
  end
end
