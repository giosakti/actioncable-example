class QuestionComment < ApplicationRecord
  validates :username, presence: true
  validates :body, presence: true
  belongs_to :question
end
