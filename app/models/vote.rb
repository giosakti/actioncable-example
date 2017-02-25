class Vote < ApplicationRecord
  validates :answer_id, presence: true
  validates :username, presence: true
  belongs_to :answer
end
