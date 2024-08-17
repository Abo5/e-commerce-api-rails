class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :product_images, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end