class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.datetime :time_due
      t.datetime :reminder_at

      t.timestamps null: false
    end
  end
end
