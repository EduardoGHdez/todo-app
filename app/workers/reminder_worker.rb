class ReminderWorker
  include Sidekiq::Worker
  require 'sidekiq-scheduler'

  def perform(*args)
    # Do something
    UserMailer.reminder_email.deliver_now
    puts 'Sent...'
  end
end
