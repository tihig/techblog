class Tag < ActiveRecord::Base
 belongs_to :post

 validates :name, presence: true

def self.search(search)
  byebug
  if search
    find(:all, :conditions => ["name LIKE '%?%'", search[:name]])
  else
    Tag.all
  end
end

end
