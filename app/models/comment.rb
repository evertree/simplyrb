class Comment < ActiveRecord::Base
  attr_accessible :body, :commenter, :post_id
  belongs_to :post
  validates :body, :post_id, presence: true
end
