FactoryGirl.define do
  factory :user do
    name "MyString"
    dartsliveid 1
    rating 1
    cricketstats 1
    stats01 1
    registered_at "2016-11-24"
    updated_at "2016-11-24"
    password_digest 'password'
  end
end
