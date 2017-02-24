class Question < ApplicationRecord
  validates :title, presence: true
  has_many :answers
end
