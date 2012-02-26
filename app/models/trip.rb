class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :invitations
  has_many :classrooms, through: :invitations
  has_many :students, through: :classrooms
  has_many :permissions
  
end
