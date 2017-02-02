class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :votes
  has_many :comments
  #add relationship with votes earned.


  validates :username, :email, :hashed_password, { presence: true }
  validates :username, :email, { uniqueness: true }

end
