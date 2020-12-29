# frozen_string_literal: true

user = User.find_or_create_by(email: 'user@example.com') do |new_user|
  new_user.username = 'user'
  new_user.password = 'password'
end

5.times do
  Article.create(author: user, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph)
end
