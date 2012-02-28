module ApplicationHelper

  def student_emails
    @trip = Trip.find(params[:id])
    @students = @trip.students
    @students.each do |student|
      student.parent1_email
    end
  end

end
