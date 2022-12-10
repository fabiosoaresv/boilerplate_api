# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'bcrypt'
gem 'bootsnap', require: false
gem 'devise'
gem 'devise-jwt'
gem 'rack-cors'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'redis'
gem 'rswag'
gem 'sidekiq'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'letter_opener'
  gem 'rspec-rails'
  gem 'rspec-sidekiq'
  gem 'rubocop-rails'
end
