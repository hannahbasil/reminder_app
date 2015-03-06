Task.destroy_all

task_hashes = [
  {:name => "switch laundry", :user_id => "1", :description => "go downstairs", :time_due => "2015-05-30T09:00:00", :reminder_at => "2015-05-30T08:00:00"},
  {:name => "turn down heat", :user_id => "1", :description => "turn dial",     :time_due => "2015-04-30T09:00:00", :reminder_at => "2015-04-30T08:00:00"},
  {:name => "buy milk",       :user_id => "1", :description => "store",         :time_due => "2015-05-20T09:00:00", :reminder_at => "2015-05-20T08:00:00"},
  {:name => "switch laundry", :user_id => "2", :description => "go downstairs", :time_due => "2015-05-30T09:00:00", :reminder_at => "2015-05-30T08:00:00"},
  {:name => "turn down heat", :user_id => "2", :description => "turn dial",     :time_due => "2015-04-30T09:00:00", :reminder_at => "2015-04-30T08:00:00"},
  {:name => "buy milk",       :user_id => "2", :description => "store",         :time_due => "2015-05-20T09:00:00", :reminder_at => "2015-05-20T08:00:00"},
  {:name => "switch laundry", :user_id => "3", :description => "go downstairs", :time_due => "2015-05-30T09:00:00", :reminder_at => "2015-05-30T08:00:00"},
  {:name => "turn down heat", :user_id => "3", :description => "turn dial",     :time_due => "2015-04-30T09:00:00", :reminder_at => "2015-04-30T08:00:00"},
  {:name => "buy milk",       :user_id => "3", :description => "store",         :time_due => "2015-05-20T09:00:00", :reminder_at => "2015-05-20T08:00:00"}
]

task_hashes.each do |task_hash|
  task = Task.new
  task.name = task_hash[:name]
  task.description = task_hash[:description]
  task.time_due = task_hash[:time_due]
  task.reminder_at = task_hash[:reminder_at]
  task.user_id = task_hash[:user_id]
  task.save
end

puts "There are now #{Task.count} tasks in the database."

User.destroy_all

usernames = ["Hannah", "Caleb", "Aimee"]

usernames.each do |username|
  user = User.create({
    :username => username,
    :email => "#{username}@example.com",
    :password => "12341234",
    :password_confirmation => "12341234"
  })
end

puts "There are now #{User.count} users in the database."

