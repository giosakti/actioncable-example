class Answer < ApplicationRecord
  validates :question_id, presence: true
  validates :order, presence: true
  validates :title, presence: true
  belongs_to :question
  has_many :votes
end
