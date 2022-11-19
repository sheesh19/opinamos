class Company < ApplicationRecord
  include PgSearch::Model

  belongs_to :user, optional: true
  has_many :reviews

  pg_search_scope :global_search,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  validates :name, :email, :country, :website, presence: true
end
