class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :body, :user_id, { presence: true }

  def score
    votes.sum(:value)
  end

end
