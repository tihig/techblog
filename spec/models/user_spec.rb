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
end
