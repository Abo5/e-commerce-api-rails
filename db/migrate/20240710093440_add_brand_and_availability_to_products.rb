class AddBrandAndAvailabilityToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :brand, :string
    add_column :products, :is_available, :boolean
  end
end
