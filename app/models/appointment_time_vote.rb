class AppointmentTimeVote < ActiveRecord::Base
  enum state: [:yes, :no]
  belongs_to :appointment_time
  belongs_to :appointment_vote
end
