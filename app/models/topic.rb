class Topic < ApplicationRecord
  has_many :subtopics
  validates :name, uniqueness: true
  has_many :posts
end
