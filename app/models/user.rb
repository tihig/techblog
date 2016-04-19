class User < ActiveRecord::Base
 
  validates :username, uniqueness: true,
                       length: { minimum: 3, maximum: 15 }

  validates :password, length: { minimum: 4 },
                       format: {
                          with: /\d.*[A-Z]|[A-Z].*\d/,
                          message: "has to contain one number and one upper case letter"}

  has_many :favorites
  has_many :favorites, through: :favorites, source: :post

  has_secure_password
end
