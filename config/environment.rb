# Load the rails application
require File.expand_path('../application', __FILE__)

config.middleware.use "Rack::Typekit", kit: 'vti6bfh'
# Initialize the rails application
Willcosgrove::Application.initialize!
