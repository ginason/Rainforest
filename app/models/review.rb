class Review < ApplicationRecord
  validates :comment, presence: true
  validates :product_id, presence: true
  
  belongs_to :product

end
