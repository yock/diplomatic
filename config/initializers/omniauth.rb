Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, Global[:twitter_key], Global[:twitter_secret]
end

if Rails.env.test?
  OmniAuth.config.test_mode = true
end
