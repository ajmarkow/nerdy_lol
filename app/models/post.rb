class Post < ApplicationRecord
  belongs_to :discussion
  has_many :likes, dependent: :destroy
  has_one :topic
end