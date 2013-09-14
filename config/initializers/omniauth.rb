Rails.application.config.middleware.use OmniAuth::Builder do
  SETUP_PROC = lambda do |env|
    request = Rack::Request.new(env)
    #env['omniauth.strategy'].options[:scope] = "user_birthday"
  end

  provider :facebook, '624306517609239', '9950bf1139ba605f73aae133b73c57b5', setup: SETUP_PROC
end