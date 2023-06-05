class AddScheduledForToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :scheduled_for, :datetime
  end
end
