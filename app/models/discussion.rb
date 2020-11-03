class Discussion < ApplicationRecord
  has_many :posts
  

  validates :title, :content_body, presence: true 
end