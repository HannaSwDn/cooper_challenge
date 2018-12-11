FactoryBot.define do
  factory :user do
    email { 'techinterviews@email.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
