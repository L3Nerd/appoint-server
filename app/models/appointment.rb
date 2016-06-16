require 'securerandom'
class Appointment < ActiveRecord::Base
  has_many :appointment_times
  has_many :appointment_votes
  
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
