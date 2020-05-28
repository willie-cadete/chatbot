# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'activerecord'
gem 'sinatra-activerecord'
gem 'pg'
gem 'rake'
gem 'pg_search', '~> 2.1.4'
gem 'rest-client'

group :development do
  gem 'tux'
end

gem 'factory_bot'
gem 'ffaker'
gem 'database_cleaner'

group :test do
  gem 'rack-test', require: 'rack/test'
  gem 'rspec'
end