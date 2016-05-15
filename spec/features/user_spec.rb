require 'rails_helper'

include Helpers

describe "User" do


  describe "if a user logged in" do
    before :each do
      FactoryGirl.create :user
      sign_in(username:"Martti", password:"Esimerkki1")
    end
   it "he can change the password" do
 
      click_link "Edit"
      fill_in('user_password', with:'Uusiesimerkki1')
      fill_in('user_password_confirmation', with:'Uusiesimerkki1')
      click_button "Update User"
      expect(page).to have_content "User was successfully updated." 
  end

   it "he cannot change password without confirmation" do
  
      click_link "Edit"
      fill_in('user_password', with:'Uusiesimerkki1')
      click_button "Update User"
      expect(page).to have_content "Password confirmation doesn't match" 
  end
   it "he can delete his profile" do

      expect{
        click_link "Destroy"
      }.to change{User.count}
  end

 end

end
