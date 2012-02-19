class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :student
  
  before_create :generate_token, :set_sent_at
  
private
  
  def generate_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
  
  def set_sent_at
    self.sent_at = Time.now
  end
end
