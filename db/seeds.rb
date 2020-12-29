# frozen_string_literal: true

User.find_or_create_by(email: 'user@example.com') do |user|
  user.username = 'user'
  user.password = 'password'
end
