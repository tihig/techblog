class Post < ActiveRecord::Base
  belongs_to :category
  has_many :users, through: :favorites, source: :user

end
