class Tag < ActiveRecord::Base
 has_many :tagships
 has_many :posts, through: :tagships, source: :post
end
