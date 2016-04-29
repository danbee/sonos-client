require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "9cb82d6af69378dea53d953e02ab5d7f800bba7d8aa048051a3b94a113cd2dbe"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')

  fetch_url_whitelist [
    /http:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:1400\/getaa\?.+/,
  ]
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
