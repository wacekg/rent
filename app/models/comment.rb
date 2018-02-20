class Comment < ApplicationRecord
  belongs_to :car
  validates :commenter, presence: true
  validates :body, presence: true, length: { in: 6..500 }
end
