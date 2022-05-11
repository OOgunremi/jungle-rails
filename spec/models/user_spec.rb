require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it "is valid" do
      user = User.new(
        first_name: 'abc',
        last_name: 'def',
        email: 'abc@yahoo.com',
        password: '123',
        password_confirmation: '123'
      )
      expect(user).to be_valid
    end

    it "email is missing" do
      user = User.new(email: nil)
      expect(user).to be_invalid
      expect(user.errors[:email]).to include("can't be blank")
  
      user.email = 'abc@yahoo.com' # valid state
      user.valid?
      expect(user.errors[:email]).not_to include("can't be blank")
    end

    it "first name is missing" do
      user = User.new(first_name: nil)
      expect(user).to be_invalid
      expect(user.errors[:first_name]).to include("can't be blank")
  
      user.first_name = 'first_name' # valid state
      user.valid? 
      expect(user.errors[:first_name]).not_to include("can't be blank")
    end

    it "last name is missing" do
      user = User.new(last_name: nil)
      expect(user).to be_invalid
      expect(user.errors[:last_name]).to include("can't be blank")
  
      user.last_name = 'last_name' # valid state
      user.valid? 
      expect(user.errors[:last_name]).not_to include("can't be blank")
    end
    

    
  end

end