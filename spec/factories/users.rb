FactoryBot.define do 
    factory :user do |u|
        u.name "Test User"
        u.email "user@example.com"
        u.password "password"
        u.password_confirmation "password"
    end
end
