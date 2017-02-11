class User < ActiveRecord::Base
  after_initialize :set_default_role, :if => :new_record?
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  def set_default_role
    unless self.role
      self.role = 'user'
    end
  end
end
