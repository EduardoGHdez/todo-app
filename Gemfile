source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#Use Bulma for styles
gem "bulma-rails", "~> 0.7.1"

#Use Devise & Omniauth for authentication 
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'

# Use HAML as template system
gem 'haml'

# Add font awesome
gem "font-awesome-rails", ">=4.0.0"

#JQuery
gem 'jquery-rails'

#Use Prawn to generat PDF's
gem 'prawn-rails'

#Use Carrierwave to upload files
gem 'carrierwave', '~> 1.0'

#Use Miniagick 
gem "mini_magick"

group :development, :test do
    gem 'dotenv-rails'
    gem 'factory_bot_rails'
    gem 'pry-rails'
    gem 'rspec-rails'
 end
 
group :test do
    gem 'faker'
    gem 'capybara'
    gem 'database_cleaner'
    gem 'rspec_junit_formatter'
    gem 'shoulda-matchers', '~> 3.1'
    gem 'simplecov'
    gem 'webmock'
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
