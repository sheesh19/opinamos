class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company

  validates :score, :description, presence: true
end
