class CreateAppointmentTimes < ActiveRecord::Migration
  def change
    create_table :appointment_times do |t|
      t.timestamp :time
      t.references :appointment, index: true, foreign_key: true

    end
  end
end
