source 'http://rubygems.org'

gem 'rails', '~> 3.1.rc'
gem 'jquery-rails'
gem 'unicorn'
gem 'json'

group :assets do
  gem 'sass-rails', '~> 3.1.rc'
  gem 'coffee-rails', '~> 3.1.rc'
  gem 'uglifier'
  gem 'compass', :git => 'git://github.com/chriseppstein/compass.git', :branch => 'rails31'
end

group :development, :test do
  gem 'sqlite3'
  gem 'spork'
  gem 'rspec-rails'
  gem 'autotest-rails'
  gem 'autotest-fsevent'
  gem 'autotest-growl'
  gem 'foreman'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'gtk2'
end

group :production do
  gem 'pg'
end
