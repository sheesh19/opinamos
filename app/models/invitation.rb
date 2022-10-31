class Invitation < ApplicationRecord
  belongs_to :company

  validates :email, presence: true
end
