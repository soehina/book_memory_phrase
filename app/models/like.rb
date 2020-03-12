class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_uniqueness_of :user_id, uniqueness: { scope: :post_id }
end