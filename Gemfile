source 'https://rubygems.org'


gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'


gem 'bootstrap-sass', '~> 3.3.1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc


gem "chartkick"
gem 'devise'

gem 'carrierwave',             '0.10.0'
gem 'mini_magick',             '3.8.0'
gem 'fog',                     '1.23.0'
gem 'friendly_id', '5.1.0.beta.1'

gem "letter_opener", :group => :development

group :development, :test do
  gem 'byebug' unless RUBY_PLATFORM =~ /linux/i
  gem "debugger" if RUBY_PLATFORM =~ /linux/i
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem "rspec-rails", "~> 2.14.0"
  gem "factory_girl_rails", "~> 4.2.1"
  gem "pry"
  gem 'guard-livereload', require: false
end

group :test do
 gem "faker", "~> 1.1.2"
 gem "capybara", "~> 2.1.0" unless RUBY_PLATFORM =~ /linux/i
 gem "database_cleaner", "~> 1.0.1"
 gem "launchy", "~> 2.3.0"
 gem 'simplecov', require: false
 gem 'capybara-webkit', '~> 1.3.1' unless RUBY_PLATFORM =~ /linux/i
 gem 'selenium-webdriver'
end
