class Company < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, :email, :country, :website, presence: true
end
