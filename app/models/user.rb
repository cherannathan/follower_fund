class User < ApplicationRecord
  has_one_attached :photo
  has_many :projects, dependent: :destroy
  # has_many :project_genres, through: :projects
  # has_many :genres, through: :project_genres
  has_many :genres, through: :projects

  has_many :investments, dependent: :destroy
  has_many :investors, -> { distinct }, through: :projects
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :role, presence: true
  validates :bio, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:pseudo],
    associated_against: {
      genres: [:name],
      projects: [:title, :bio]
    },
    using: {
      tsearch: { prefix: true }
    }
end
