# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "username#{i}" }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password }
  end
end
