class User < ActiveRecord::Base
  has_secure_password

 
  validates :username, uniqueness: true,
                       length: { minimum: 3 }
  has_many :favorites
end
