class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.date :date
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
