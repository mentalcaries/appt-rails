class Appointment < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :phone, presence: true
  validates :description, presence: true
end
