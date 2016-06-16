class CreateAppointmentVotes < ActiveRecord::Migration
  def change
    create_table :appointment_votes do |t|
      t.references :appointment, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :auth_token
      
      t.timestamps null: false
    end
  end
end
