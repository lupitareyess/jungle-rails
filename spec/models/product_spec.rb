require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'is valid when it has all required attributes' do
    category = Category.create(name: "test")
    product = Product.new(name: "Cherry Blossom", description: "Hello", image:'image', price_cents:"20000", quantity: 10, category_id: category.id)
    expect(product).to be_valid 
  end
  
  it 'is invalid when it does not have price' do
    category = Category.create(name: "test")
    product = Product.new(name: "Cherry Blossom", description: "Hello", image:'image', quantity: 10, category_id: category.id)
    expect(product).not_to be_valid 
  end

  it 'is invalid when it does not have name' do
    category = Category.create(name: "test")
    product = Product.new(description: "Hello", image:'image', price_cents:"20000", quantity: 10, category_id: category.id)
    expect(product).not_to be_valid 
  end

  it 'is invalid when it does not have category' do
    category = Category.create(name: "test")
    product = Product.new(name: "Cherry Blossom", description: "Hello", image:'image', price_cents:"20000", quantity: 10)
    expect(product).not_to be_valid 
  end

  it 'is invalid when it does not have quantity' do
    category = Category.create(name: "test")
    product = Product.new(name: "Cherry Blossom", description: "Hello", image:'image', price_cents:"20000", category_id: category.id)
    expect(product).not_to be_valid 
  end

end
