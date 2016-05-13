require 'rails_helper'

include Helpers

describe "Post" do
  before :each do
    admin = FactoryGirl.create :admin
    category = FactoryGirl.create :category
    FactoryGirl.create :post, category_id: category.id, user_id: admin.id
  end

  describe "if a user logged in" do
    before :each do
      FactoryGirl.create :user
      sign_in(username:"Seppo", password:"Esimerkki1")
    end

  it "post is listed in the front page" do
      visit posts_path
      expect(page).to have_content 'Testing spec'
  end

 end

  describe "if a admin user logged in" do
    before :each do
      sign_in(username:"Pekka", password:"Sisilisko2")
    end

  it "post is listed in the front page" do
      visit posts_path
      expect(page).to have_content 'Testing spec'
  end

  it "new post is created" do
      visit new_post_path
      #hidden field not found...?
      fill_in('post_title', with:'Another test related post')
      select('Testing', from:'post[category]')
      fill_in('post_intro', with:'Intro to this post')
      fill_in('post_body', with:'Something important about this topic.')
        expect{
        click_button "Create Post"
      }.to change{Post.count}.from(1).to(2)
  end

 end
end

