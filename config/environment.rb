# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address:              'smtp.mailgun.org',
  port:                 '587',
  authentication:       :plain,
  user_name:            ENV['MAILGUN_SMTP_LOGIN'],
  password:             ENV['MAILGUN_SMTP_PASSWORD'],
  domain:               'heroku.com',
  enable_starttls_auto: true
}

SMTP hostname: smtp.mailgun.org
Port: 587 (recommended)
Username: postmaster@sandboxda39b507a7224bdb98f58936b06539ad.mailgun.org
Default password: 00e877bf50df12478a450b9e17f25cf6-dbc22c93-56836b91
