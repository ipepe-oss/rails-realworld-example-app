# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.6'

gem 'rails', '5.0.7.2'

gem 'devise'
gem 'dotenv-rails'
gem 'jbuilder', '~> 2.0'
gem 'jwt', '~> 1.5.4'
gem 'pg'
gem 'puma'
gem 'rack-cors', '~> 0.4.0'
gem 'will_paginate'

# TODO: to revise if they are needed
gem 'acts_as_follower'
gem 'acts-as-taggable-on', git: 'https://github.com/mbleigh/acts-as-taggable-on'

group :development, :test do
  gem 'faker'
  gem 'sqlite3', '~> 1.3.6'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end
