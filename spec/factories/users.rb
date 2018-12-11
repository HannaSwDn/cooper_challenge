FactoryBot.define do
  factory :user do
    email { 'hanna@email.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
