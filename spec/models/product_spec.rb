require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid" do
      @category = Category.new
      @product = Product.new
      @category.name = 'Test Category'
      @product.name = 'Evergreen'
      @product.price = 500
      @product.quantity = 10
      @product.category = @category

      expect(@product.valid?).to be true
    end

    it "contains product name" do
      @product = Product.new
      @product.name = nil # when name is missing
      @product.valid?
      expect(@product.errors[:name]).to  include("can't be blank")
  
      @product.name = 'test'# when name is present
      @product.valid? 
      expect(@product.errors[:name]).not_to  include("can't be blank")
    end

    it "price_cents presence" do
      @product = Product.new
      @product.price_cents = nil # when product price is missing
      @product.valid?
      expect(@product.errors[:price_cents]).to  include("is not a number")
  
      @product.price_cents = 50000 # when product price is present
      @product.valid? 
      expect(@product.errors[:price_cents]).not_to  include("can't be blank")
    end

    it "quantity" do
      @product = Product.new
      @product.quantity = nil # product quantity missing
      @product.valid?
      expect(@product.errors[:quantity]).to  include("can't be blank")
  
      @product.quantity = 3 # product quantity present
      @product.valid? 
      expect(@product.errors[:quantity]).not_to  include("can't be blank")
    end
  
    it "has category_id" do
      @cat = Category.new
      @product = Product.new
      @product.category = nil # missing category
      @product.valid?
      expect(@product.errors[:category]).to  include("can't be blank")

      @product.category = @cat # category present
      @product.valid? 
      expect(@product.errors[:category]).not_to  include("can't be blank")
    end
  end
end
