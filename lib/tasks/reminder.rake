namespace :reminder do
  desc "sends a text to user that reminder is due"
  task send: :environment do
    Task.all.each do |task|
      if task.reminder_at+5.hours > Time.now && task.reminder_at+5.hours < Time.now+5.minutes

    account_sid = ENV["ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      :from => '+13126269816',
      :to => '+17733506634',
      :body => 'Hello #{task.user.first_name}, this is your reminder to complete #{task.name}',
    })
    puts "the text was sent for task#{task.user_id} for #{task.name}"
      end

      puts "the text was not sent"
    end

  end
end
