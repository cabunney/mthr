# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mthr::Application.initialize!


# Whenever configure
config.gem 'whenever', :lib => false, :source => 'http://gems.github.com'

