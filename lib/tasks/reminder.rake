namespace :reminder do
  desc "sends a text to user that reminder is due"
  task send: :environment do
    Task.all.each do |task|
      if task.reminder_at > Time.now && task.reminder_at < Time.now+5.minutes
        p "I found task id#{task.id}"
      end
    end

    # put your own credentials here
    # account_sid = 'add environment variables'
    # auth_token = 'add environment variables'

    # set up a client to talk to the Twilio REST API
    # @client = Twilio::REST::Client.new account_sid, auth_token

    # @client.account.messages.create({
    #   :from => '+13126269816',
    #   :to => current_user.phonenumber,
    #   :body => 'hello',
    # })

  end
end
