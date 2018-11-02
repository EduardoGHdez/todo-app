class ReminderWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  require 'sidekiq-scheduler'

  def perform(*args)
    # Do something
    UserMailer.reminder_email.deliver_now
    puts 'Sent...'
  end
end
