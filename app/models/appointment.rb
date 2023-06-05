class Appointment < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :phone, presence: true
  validates :description, presence: true

  scope :scheduled, -> { where("scheduled_for <= ?", Time.current) }
  scope :to_be_scheduled, -> { where("scheduled_for > ?", Time.current)}
end
