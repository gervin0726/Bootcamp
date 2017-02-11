class User
  def initialize
    @users = []
  end
  def add_user(user)
    @users << user
  end
  def authenticate(user, password)
    true
  end
end
