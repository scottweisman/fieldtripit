class PermissionMailer < ActionMailer::Base
  default :from => "fieldtripnotice@gmail.com"

  def permission_slip(permission)
    @permission = permission
    @token      = @permission.token
    mail(:to => permission.parent1_email, :subject => "Permission Slip")
  end
  
end
