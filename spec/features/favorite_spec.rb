require 'rails_helper'

include Helpers

describe "Favorite" do
  before :each do
    admin = FactoryGirl.create :admin
    category = FactoryGirl.create :category
    FactoryGirl.create :post, category_id: category.id, user_id: admin.id
  end

  describe "if a user logged in" do

    before :each do
      FactoryGirl.create :user
      sign_in(username:"Martti", password:"Esimerkki1")
      visit posts_path
      click_link('Testing spec')
    end

  it "has a button in post page" do
      expect(page).to have_button("Favorite")
  end

  it "is created when button is pressed" do
      expect{
        click_button "Favorite"
      }.to change{Favorite.count}.from(0).to(1)
  end
 end 

  describe "if a user is not logged in" do
     before :each do
      visit posts_path
      click_link('Testing spec')
    end

  it "has no button on post page " do
      expect(page).not_to have_button("Favorite")
  end
 end

end
