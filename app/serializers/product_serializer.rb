class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :brand, :is_available, :stock_quantity
  belongs_to :category
end