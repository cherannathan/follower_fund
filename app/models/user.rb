class User < ApplicationRecord

  has_one_attached :photo
  has_many :projects
  has_many :investments
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :role, presence: true
  validates :bio, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
