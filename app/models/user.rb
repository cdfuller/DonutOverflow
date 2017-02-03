class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :votes
  has_many :comments
  #add relationship with votes earned.


  validates :username, :email, :hashed_password, { presence: true }
  validates :username, :email, { uniqueness: true }
  validates :email, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/ }
  validate :check_password

  def check_password
    if @raw_password.length == 0 || @raw_password.length < 8
      @errors.add(:password, "needs to be 8 characters or more")
    end
  end

  def authenticate?(password)
      self.password == password
  end

end
