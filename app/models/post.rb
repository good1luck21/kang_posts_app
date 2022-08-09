class Post < ApplicationRecord
  def user
    return User.find(self.user_id)
  end

  def likes
    return Like.where(post_id: self.id)
  end
end
