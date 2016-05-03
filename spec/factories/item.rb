FactoryGirl.define do
  factory :item do
    list

    title { Faker::Book.title }
    description { Faker::Lorem.sentence }
    state { [:not_started, :in_progress, :complete].sample }
  end
end
