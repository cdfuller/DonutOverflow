class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :user

  validates :user_id, { presence: true }
  validates :value, numericality: { only_integer: true }
  # validate :valid_vote_value

  # def valid_vote_value
  #   unless self.value == -1 || self.value == 1
  #     errors.add :value, "No voter fraud. Can only vote up or down. And only once."
  #   end
  # end
end
