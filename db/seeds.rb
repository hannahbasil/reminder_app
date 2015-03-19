User.destroy_all

usernames = ["Hannah", "Caleb", "Aimee"]


usernames.each do |username|
  user = User.create({
    :username => username,
    :first_name => username,
    :last_name => "Basil",
    :email => "#{username}@example.com",
    :phone_number => "7733506634",
    :password => "12341234",
    :password_confirmation => "12341234"
  })
end

puts "There are now #{User.count} users in the database."

Task.destroy_all

task_hashes = [
  {:name => "switch laundry", :user => "Hannah", :description => "go downstairs", :time_due => "2015-05-30T09:00:00", :reminder_at => "2015-05-30T08:00:00"},
  {:name => "turn down heat", :user => "Hannah", :description => "turn dial",     :time_due => "2015-04-30T09:00:00", :reminder_at => "2015-04-30T08:00:00"},
  {:name => "buy milk",       :user => "Hannah", :description => "store",         :time_due => "2015-05-20T09:00:00", :reminder_at => "2015-05-20T08:00:00"},
  {:name => "switch laundry", :user => "Caleb", :description => "go downstairs", :time_due => "2015-05-30T09:00:00", :reminder_at => "2015-05-30T08:00:00"},
  {:name => "turn down heat", :user => "Caleb", :description => "turn dial",     :time_due => "2015-04-30T09:00:00", :reminder_at => "2015-04-30T08:00:00"},
  {:name => "buy milk",       :user => "Caleb", :description => "store",         :time_due => "2015-05-20T09:00:00", :reminder_at => "2015-05-20T08:00:00"},
  {:name => "switch laundry", :user => "Aimee", :description => "go downstairs", :time_due => "2015-05-30T09:00:00", :reminder_at => "2015-05-30T08:00:00"},
  {:name => "turn down heat", :user => "Aimee", :description => "turn dial",     :time_due => "2015-04-30T09:00:00", :reminder_at => "2015-04-30T08:00:00"},
  {:name => "buy milk",       :user => "Aimee", :description => "store",         :time_due => "2015-05-20T09:00:00", :reminder_at => "2015-05-20T08:00:00"}
]

task_hashes.each do |task_hash|
  user = User.find_by :username => task_hash[:user]
  task = user.tasks.build
  task.name = task_hash[:name]
  task.description = task_hash[:description]
  task.time_due = task_hash[:time_due]
  task.reminder_at = task_hash[:reminder_at]
  task.save
end

puts "There are now #{Task.count} tasks in the database."

