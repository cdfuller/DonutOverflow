class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :votes, as: :voteable

  validates :body, :user_id, { presence: true }

  def score
    votes.sum(:value)
  end

  def question
    if commentable_type == "Question"
      return question = commentable
    elsif commentable_type == "Answer"
      return question = commentable.question
    end
  end

end
