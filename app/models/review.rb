class Review < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :score, :text, presence: true
end
