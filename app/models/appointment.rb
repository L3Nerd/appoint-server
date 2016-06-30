require 'securerandom'
class Appointment < ActiveRecord::Base
  has_many :dates, foreign_key: "appointment_id", class_name: "AppointmentTime", dependent: :destroy
  has_many :appointment_votes, dependent: :destroy
  
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
