class Student < ActiveRecord::Base
  belongs_to :classroom
  
  def student_full_name
    [student_first_name, student_last_name].join(' ')
  end
  
  def student_full_name=(name)
    split = name.split(' ', 2)
    self.student_first_name = split.first
    self.student_last_name = split.last
  end
end
