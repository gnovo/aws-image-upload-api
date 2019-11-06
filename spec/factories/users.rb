# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'john.doe@email.com' }
    password { 'secure_password' }
  end

  factory :random_user, class: User do
    email { Faker::Internet.safe_email }
    password { 'secure_password' }
  end
end
