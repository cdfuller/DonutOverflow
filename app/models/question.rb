class Question < ActiveRecord::Base
  belongs_to :author, :class_name => "User", foreign_key: :user_id
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  belongs_to :best_answer, class_name: "Answer", foreign_key: :best_answer_id


  validates :title, :body, :user_id, { presence: true }
end
