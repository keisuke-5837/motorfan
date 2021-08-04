FactoryBot.define do
  factory :machine do

    charm       {Faker::Lorem.sentence}
    category_id { 2 }

    association :user

    after(:build) do |machine|
      machine.image.attach(io: File.open('public/images/IMG_1367.jpeg'), filename: 'IMG_1367.jpeg')
    end
  end
end