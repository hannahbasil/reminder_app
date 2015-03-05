class Task < ActiveRecord::Base

  validates :name, presence: true
  validates :time_due, presence: true

  belongs_to :user
end
