json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :name, :description, :time_due, :reminder_at
  json.url task_url(task, format: :json)
end
