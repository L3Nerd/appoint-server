class CreateAppointmentTimeVotes < ActiveRecord::Migration
  def change
    create_table :appointment_time_votes do |t|
      t.integer :state
      t.references :appointment_time, index: true, foreign_key: true
      t.references :appointment_vote, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
