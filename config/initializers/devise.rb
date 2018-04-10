
Devise.setup do |config|

  # with default "from" parameter.
  config.mailer_sender = 'support@example.com'

  require 'devise/orm/active_record'

  
  # if you set :request_keys to [:subdomain], :subdomain will be used on authentication.
  # The same considerations mentioned for authentication_keys also apply to request_keys.
  # config.request_keys = []

  # Configure which authentication keys should be case-insensitive.
  # These keys will be downcased upon creating or modifying a user and when used
  # to authenticate or find a user. Default is :email.
  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]


 
  config.skip_session_storage = [:http_auth]



  config.stretches = Rails.env.test? ? 1 : 11



  config.reconfirmable = true

 
  config.expire_all_remember_me_on_sign_out = true


  config.password_length = 6..128
 
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete
 
end
