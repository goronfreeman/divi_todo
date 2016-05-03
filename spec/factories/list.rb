FactoryGirl.define do
  factory :list do
    user

    title { Faker::Book.title }
    description { Faker::Lorem.sentence }
  end
end
