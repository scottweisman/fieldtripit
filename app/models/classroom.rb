class Classroom < ActiveRecord::Base
  belongs_to :user  
  has_many :students, :dependent => :destroy
  accepts_nested_attributes_for :students
end
