source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'rails', '~> 7.0.4'
gem 'puma', '~> 5.0'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false
gem 'pg'
gem 'devise'
gem 'sidekiq'
gem 'redis'
gem 'rswag'
gem 'bcrypt'
gem 'jwt'

group :development, :test do
  gem 'byebug', platforms: %i[ mri mingw x64_mingw ]
  gem 'letter_opener'
  gem 'rubocop-rails'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end