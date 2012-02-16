class Classroom < ActiveRecord::Base
  belongs_to :user  
  has_many :students, :dependent => :destroy
  has_many :invitations
  has_many :trips, through: :invitations
  accepts_nested_attributes_for :students
end
