class Product < ApplicationRecord
  belongs_to :category, optional: true
  has_one_attached :image
  has_many :order_items
end
