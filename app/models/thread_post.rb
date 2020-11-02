class ThreadPost < ApplicationRecord
  belongs_to :thread
  belongs_to :post
end