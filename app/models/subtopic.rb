class SubTopic < ApplicationRecord
  belongs_to :topic
  validates :name, uniqueness: true
  has_many :posts
end
