FactoryBot.define do
  factory :faq do
    question { FFaker::Lorem.phrase }
    anwer { FFaker::Lorem.prase }
  end
end