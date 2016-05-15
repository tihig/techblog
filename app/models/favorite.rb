class Favorite < ActiveRecord::Base
 belongs_to :post
 belongs_to :user

 validates :post_id, presence: true
end
