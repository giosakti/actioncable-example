class Answer < ApplicationRecord
  validates :order, presence: true
  validates :title, presence: true
  belongs_to :question, inverse_of: :answers
  has_many :votes
end
