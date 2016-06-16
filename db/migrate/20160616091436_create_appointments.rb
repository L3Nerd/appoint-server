class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :title
      t.text :description
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
