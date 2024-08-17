require 'faker'

# Clear existing data
puts "Clearing existing data..."
# Use destroy_all with dependent: :destroy to handle associations
OrderItem.destroy_all
Order.destroy_all
Review.destroy_all
ProductImage.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all

# Create Categories
puts "Creating categories..."
categories = [
  "Stringed Instruments",
  "Keyboards",
  "Middle Eastern Instruments",
  "Percussion",
  "Wind Instruments"
]

categories.each do |category_name|
  Category.create!(name: category_name)
end

# Create Products
puts "Creating products..."
products = [
  {
    name: "Classical Guitar",
    description: "A six-stringed wooden guitar known for its warm, rich tone. Perfect for beginners and professionals alike, used in various musical styles.",
    price: 299.99,
    stock_quantity: 50,
    brand: "Yamaha",
    category: Category.find_by(name: "Stringed Instruments"),
    is_available: true
  },
  {
    name: "Digital Piano",
    description: "An electronic piano with 88 fully-weighted keys. Provides realistic piano sound with the ability to connect to a computer for music recording and editing.",
    price: 799.99,
    stock_quantity: 25,
    brand: "Roland",
    category: Category.find_by(name: "Keyboards"),
    is_available: true
  },
  {
    name: "Arabic Oud",
    description: "A traditional Middle Eastern stringed instrument with a rich, deep sound. Handcrafted from premium walnut wood, suitable for both classical and contemporary Arabic music.",
    price: 1299.99,
    stock_quantity: 10,
    brand: "Al-Farabi",
    category: Category.find_by(name: "Middle Eastern Instruments"),
    is_available: true
  }
]

products.each do |product_data|
  product = Product.create!(product_data)

  # Create a product image for each product
  ProductImage.create!(
    image_url: "#{product.name.parameterize}.jpg",
    product: product
  )
end

puts "Seed data created successfully!"