require 'rails_helper'

RSpec.describe User, type: :model do
    it "is not saved without a password" do
    user = User.create username:"Pekka"

    expect(user).not_to be_valid
    expect(User.count).to eq(0)
  end
 it "with a proper password is saved" do
    user = User.create username:"Pekka", password:"Secret1", password_confirmation:"Secret1"

    expect(user).to be_valid
    expect(User.count).to eq(1)
  end


  describe "with a proper password" do
    let(:user){ FactoryGirl.create(:user) }

    it "is saved" do
      expect(user).to be_valid
      expect(User.count).to eq(1)
    end
  end

  describe "admin with a proper password" do
    let(:admin){ FactoryGirl.create(:admin) }

    it "is saved" do
      expect(admin).to be_valid
      expect(User.count).to eq(1)
    end
   
    it "is admin" do
      expect(admin.admin).to be true
    end
  end
end
