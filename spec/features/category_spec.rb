require 'rails_helper'

include Helpers

describe "Category" do
  before :each do
    admin = FactoryGirl.create :admin
    category = FactoryGirl.create :category
    FactoryGirl.create :post, category_id: category.id, user_id: admin.id
  end

  describe "if a user is logged in" do
    
    before :each do
      FactoryGirl.create :user
      sign_in(username:"Martti", password:"Esimerkki1")
      visit categories_path
    end

  it "is listed in index-page" do
      expect(page).to have_content("Testing")
  end
 end

  describe "if a admin is logged in" do

    before :each do
      sign_in(username:"Pekka", password:"Sisilisko2")
      visit categories_path
    end

  it "is created from new category" do
      visit new_category_path
      fill_in('category_name', with:'Rspec')
      fill_in('category_description', with:'Posts related to Rspec-testing.')
        expect{
        click_button "Submit"
      }.to change{Category.count}.from(1).to(2)
  end

  it "is not created when missing name" do
      visit new_category_path
      fill_in('category_description', with:'Posts related to Rspec-testing.')
        expect{
        click_button "Submit"
      }.not_to change{Category.count}
  end

  it "is edited from edit category" do
      click_link "Testing"
      click_link "Edit"
      fill_in('category_name', with:'Capybara')
      fill_in('category_description', with:'Posts related to Capybara-testing.')
      click_button "Submit"

      expect(page).to have_content "Capybara"

  end
  it "can be deleted" do
      category = FactoryGirl.create :category, name: "To be deleted"
      visit categories_path
      click_link "To be deleted"
      
      expect{
        click_link "Destroy"
      }.to change{Category.count}
  end
 
 end
end
