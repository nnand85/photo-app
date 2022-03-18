# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address:              'smtp.mailgun.org',
  port:                 '587',
  authentication:       :plain,
  user_name:            ENV['MAILGUN_USERNAME'],
  password:             ENV['MAILGUN_PASSWORD'],
  domain:               'heroku.com',
  enable_starttls_auto: true
}
