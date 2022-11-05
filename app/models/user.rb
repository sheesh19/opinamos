class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :company, optional: true
  has_many :reviews

  validates :first_name, :last_name, presence: true


  def admin?
    role == 'admin'
  end

  def owner?
    role == 'owner' || company.present?
  end
end
