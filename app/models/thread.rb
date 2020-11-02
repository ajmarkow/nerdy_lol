class Discusision < ApplicationRecord
  has_many :discussion_posts
  has_many :posts, :through => :discussion_posts
end