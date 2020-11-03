class Discussion < ApplicationRecord
  has_many :discussion_posts
  has_many :posts, :through => :discussion_posts

  validates :title, :topic, :content_body, presence: true 
end