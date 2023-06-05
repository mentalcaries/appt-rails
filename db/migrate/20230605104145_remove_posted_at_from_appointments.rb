class RemovePostedAtFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :posted_at, :datetime
  end
end
