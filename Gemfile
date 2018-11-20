source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.4.2'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'wkhtmltopdf-binary'
gem 'wicked_pdf'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'time_difference'
gem 'ckeditor' 
gem "paperclip", "~> 6.0.0"
gem 'remotipart', '~> 1.2' 
gem "aws-sdk","~> 2"
gem 'googleauth'
gem 'google_drive'
gem 'spreadsheet'
gem 'roo'
gem 'roo-xls'
gem 'week_of_month'
gem 'google-api-client'
gem 'iconv'

gem 'pg'
#gem 'ponto', path: 'ponto'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'gmail', '~> 0.6.0'
gem 'rubysl-net-imap'
gem 'gmail_xoauth'
gem 'signet', require: 'signet/oauth_2/client'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass'
gem 'high_voltage'
gem 'omniauth'

gem 'google-api-client', require: ['google/api_client/client_secrets', 'google/apis/gmail_v1']
gem 'omniauth-google-oauth2'
gem 'pg'
gem 'therubyracer', :platform=>:ruby
group :development do
  gem 'better_errors'
  gem 'rails_layout'
end
