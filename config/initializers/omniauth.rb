Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['instagram_client_id'], ENV['instagram_secret']
end