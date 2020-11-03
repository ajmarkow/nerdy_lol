class Discussion < ApplicationRecord
  has_many :posts
  

  validates :title, :topic, :content_body, presence: true 
end