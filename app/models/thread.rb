class Thread < ApplicationRecord
  has_many :thread_posts
  has_many :posts :through => :thread_posts
  has_one :topic
end