class AppointmentVote < ActiveRecord::Base
  has_many :appointment_time_votes
  belongs_to :appointment
  belongs_to :user
end
