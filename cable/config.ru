# cable/config.ru

require ::File.expand_path('../../config/environment',  __FILE__)
Rails.application.eager_load!

require 'action_cable/process/logging'

# ActionCable.server.config.allowed_request_origins = ["http://localhost:3000"]
ActionCable.server.config.disable_request_forgery_protection = true
run ActionCable.server
