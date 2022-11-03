class Review < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :score, :description, presence: true
end
