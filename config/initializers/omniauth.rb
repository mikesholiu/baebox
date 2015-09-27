Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['instagram_client_id'], ENV['instagram_secret']
end

OmniAuth.config.on_failure = Proc.new do |env|
  WelcomeController.action(:omniauth_failure).call(env)
  #this will invoke the omniauth_failure action in UsersController.
end