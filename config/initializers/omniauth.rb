Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :facebook, '248371322009038', 'c4c39e4bd4f01ac3500b9ce0cec211f6'
end