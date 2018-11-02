
require 'sidekiq/scheduler'

#if Rails.env.production?
  Sidekiq.schedule = YAML.load_file(File.expand_path('../../../config/schedule.yml',__FILE__))
  Sidekiq::Scheduler.load_schedule! # This will retrigger the loading stage

  Sidekiq.configure_client do |config|
    config.redis = { url: ENV['REDIS_URL'], size: 2 }
  end

  Sidekiq.configure_server do |config|
    config.redis = { url: ENV['REDIS_URL'], size: 30 }
    config.average_scheduled_poll_interval = 15
    Rails.application.config.after_initialize do
      Rails.logger.info("DB Connection Pool size for Sidekiq Server before disconnect is: #{ActiveRecord::Base.connection.pool.instance_variable_get('@size')}")
      ActiveRecord::Base.connection_pool.disconnect!      
    end
  end
  
#end
