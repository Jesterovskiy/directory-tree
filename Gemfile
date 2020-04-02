# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

BUNDLE_RAILS_VERSION = '~> 6.0.2'

# Rails
gem 'actionpack',    BUNDLE_RAILS_VERSION
gem 'activemodel',   BUNDLE_RAILS_VERSION
gem 'activesupport', BUNDLE_RAILS_VERSION
gem 'railties',      BUNDLE_RAILS_VERSION

# Database
gem 'sequel', '~> 5.26'
gem 'sequel-rails', '~> 1.1'
gem 'sequel_pg', require: 'sequel'
gem 'sequel_postgresql_triggers'

# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'mat_path', path: 'lib/mat_path'

group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'dotenv-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'rspec-rails', '>= 4.0.0.beta4'
  gem 'webmock'
  gem 'fabrication'
  gem 'faker'
  gem 'faraday'
  gem 'database_cleaner'
end

group :metrics do
  gem 'brakeman'
  gem 'rubocop'
  gem 'rubocop-gitlab-security'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'simplecov'
end
