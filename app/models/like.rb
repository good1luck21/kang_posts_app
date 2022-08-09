class Like < ApplicationRecord
  def post
    return Post.find(self.post_id)
  end
end
