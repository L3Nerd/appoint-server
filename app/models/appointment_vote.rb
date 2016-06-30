require 'securerandom'
class AppointmentVote < ActiveRecord::Base
  has_many :appointment_time_votes
  belongs_to :appointment
  belongs_to :user
  
  before_create :set_auth_token
  
  private
  def set_auth_token
    return if auth_token.present?
    self.auth_token = generate_auth_token
  end

  def generate_auth_token
    SecureRandom.uuid.gsub(/\-/,'')
  end
end
