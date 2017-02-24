class Answer < ApplicationRecord
  validates :order, presence: true
  validates :title, presence: true
  belongs_to :question
  has_many :votes
end
