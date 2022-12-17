class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company
  attr_accessor :email

  validates :score, :description, presence: true
end
