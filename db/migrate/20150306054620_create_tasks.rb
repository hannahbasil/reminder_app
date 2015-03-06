class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :name
      t.text :description
      t.datetime :time_due
      t.datetime :reminder_at

      t.timestamps null: false
    end
    add_foreign_key :tasks, :users
  end
end
