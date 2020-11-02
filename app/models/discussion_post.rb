class ThreadPost < ApplicationRecord
  belongs_to :discussion
  belongs_to :post
end