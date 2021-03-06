require 'rails_helper'

include Helpers

describe "Tag" do

  before :each do
    admin = FactoryGirl.create :admin
    category = FactoryGirl.create :category
    FactoryGirl.create :post, category_id: category.id, user_id: admin.id
    FactoryGirl.create :tag
  end

   describe "if a admin is logged in" do

    before :each do
      sign_in(username:"Pekka", password:"Sisilisko2")
      visit posts_path
      click_link "Testing"
    end

  it "is created in Post- page" do
      fill_in('tag_name', with:'Trendy')
        expect{
        click_button "Tag post"
      }.to change{Tag.count}.from(1).to(2)
  end

  it "is showed in Post-page" do
      fill_in('tag_name', with:'Trendy')
      click_button "Tag post"
      expect(page).to have_content "Trendy"
  end

  it "is not created without name" do
        expect{
        click_button "Tag post"
      }.not_to change{Tag.count}
  end

  it "is deleted" do
        fill_in('tag_name', with:'Trendy')
        click_button "Tag post"
        click_link "Trendy"
        expect{
        click_link "Destroy"
      }.to change{Tag.count}
  end

  it "is edited" do
        fill_in('tag_name', with:'Trendy')
        click_button "Tag post"
        click_link "Trendy"

        click_link "Edit"
        fill_in('tag_name', with:'Not so trendy')
        click_button "Submit"
        expect(page).to have_content "Not so trendy"
  end

 end


end
