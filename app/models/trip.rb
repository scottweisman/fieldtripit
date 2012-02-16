class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :invitations
  has_many :classrooms, through: :invitations
  
end
