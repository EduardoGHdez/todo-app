FactoryBot.define do
  factory :list do |l|
      l.title {  Faker::StarWars.call_squadron  }
      l.description {  Faker::StarWars.wookiee_sentence }
  end
end
