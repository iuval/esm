source 'https://rubygems.org'

gem 'rails', '4.0.2'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'

# Code analysis tools
gem 'rubocop'
gem 'rails_best_practices'
gem 'reek'
gem 'jslint_on_rails'

# System
gem 'pg'
gem 'sendgrid'
gem 'carrierwave'
gem 'fog'
gem 'friendly_id', '~> 5.0.0'

# Authentication and Privilegies
gem 'devise'
gem 'cancan'
gem 'rolify', git: 'https://github.com/EppO/rolify.git'
gem 'figaro'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'debugger'
  gem 'rspec-rails'
  gem 'spork-rails'
  gem 'thin'
  gem 'faker'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem "codeclimate-test-reporter", require: nil
end

group :production do
  gem 'thin'
end

group :assets do
  gem 'compass-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rails_best_practices'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-reek'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
end
