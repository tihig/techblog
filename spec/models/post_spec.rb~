require 'rails_helper'

RSpec.describe Post, type: :model do

 it "has a correct attributes and is saved" do
    category1 = FactoryGirl.create :category
    user1 = FactoryGirl.create :user
    post = Post.create title: "Testing spec", intro: "Testing does this spec work.", category_id: category1.id, 
    user_id: user1.id, body: "This is the body of the test spec."

    expect(post.title).to eq("Testing spec")
    expect(post.category_id).to eq(1)
    expect(post).to be_valid
  end

 it "is not saved without title" do
    category1 = FactoryGirl.create :category
    user1 = FactoryGirl.create :user
    post = Post.create intro: "Testing does this spec work.", category_id: category1.id,
    user_id: user1.id, body: "This is the body of the test spec."

    expect(post).not_to be_valid
  end

 it "is not saved without category" do
    user1 = FactoryGirl.create :user
    post = Post.create title: "Testing spec", intro: "Testing does this spec work.", 
    user_id: user1.id, body: "This is the body of the test spec."

    expect(post).not_to be_valid
  end

 it "is not saved without user" do
    category1 = FactoryGirl.create :category
    post = Post.create title: "Testing spec", intro: "Testing does this spec work.", category_id: category1.id,
    body: "This is the body of the test spec."

    expect(post).not_to be_valid
  end

end
