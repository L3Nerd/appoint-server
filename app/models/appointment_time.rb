class AppointmentTime < ActiveRecord::Base
  belongs_to :appointment
  has_many :appointment_time_votes
end
