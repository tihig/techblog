class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :favorites
  has_many :favorited_by, through: :favorites, source: :user
  has_many :tagships
  has_many :tags, through: :tagships, source: :tag

end
