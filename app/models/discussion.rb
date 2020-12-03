class Discussion < ApplicationRecord
  has_many :posts, dependent: :destroy

  scope :findbytopic, ->(topic_parameter) { where(topic_id: topic_parameter) }
end
