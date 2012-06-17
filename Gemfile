source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'jquery-rails'
gem 'activeadmin', :git => 'https://github.com/gregbell/active_admin.git'
gem 'sass-rails', '~> 3.2.3'
gem "meta_search",    '>= 1.1.0.pre'
gem "paperclip", "~> 3.0"
gem 'rmagick', '= 2.12.2', :require => false
gem 'aws-s3'
gem 'aws-sdk'

group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :development do
  gem 'foreman'
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :production do
  gem 'pg'
  gem 'newrelic_rpm'
end