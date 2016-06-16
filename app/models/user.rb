class User < ActiveRecord::Base
  has_many :appointment_votes
end
