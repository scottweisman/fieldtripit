class PermissionMailer < ActionMailer::Base
  default :from => "fieldtripnotice@gmail.com"

  def permission_slip(student)
    # these are instance variables for view
    # @permission = permission
    # @token      = @permission.token
    @student = student
    
    mail(:to => student.parent1_email, :subject => "Permission Slip")
  end
  
end
