class Company < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews

  validates :name, :email, :country, :website, presence: true
end
