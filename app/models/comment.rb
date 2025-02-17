class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user = User.find_or_create_by(username: user_attributes[:username])
    self.user = user if user.username != ''
  end
end
