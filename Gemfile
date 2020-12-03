# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.6'

gem 'rails', '5.0.7.2'

# revised gems
gem 'dotenv-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'acts_as_follower'
gem 'acts-as-taggable-on', git: 'https://github.com/mbleigh/acts-as-taggable-on'
gem 'devise'
gem 'jwt', '~> 1.5.4'
gem 'puma'
gem 'rack-cors', '~> 1.0.5'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
end
