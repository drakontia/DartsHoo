FactoryGirl.define do
  factory :user do
    user_name 'John Doe'
    dartslive_id 123456781234
    stats01 80
    statscricket 2.5
    created_at "2016-11-24"
    updated_at "2016-11-24"
    email 'john@example.com'
    password_digest 'password'
  end
end
