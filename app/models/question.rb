class Question < ApplicationRecord
  validates :title, presence: true
  has_many :answers, inverse_of: :question
  accepts_nested_attributes_for :answers
  has_many :question_comments
end
