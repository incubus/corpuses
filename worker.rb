require 'bundler/setup'
Bundler.require

# load workers
require_all 'lib/workers'

# client configuration
Sidekiq.configure_client do |config|
  config.redis = { namespace: 'corpuses', size: 1 }
end

# server configuration
Sidekiq.configure_server do |config|
  config.redis = { namespace: 'corpuses' }
end
