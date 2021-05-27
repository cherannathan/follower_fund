class Project < ApplicationRecord
  belongs_to :user
  has_many :project_genres
  has_many :genres, through: :project_genres
  validates :status, presence: true
  validates :goal_amount, presence: true
  validates :revenue_split, presence: true
  validates :deadline, presence: true
  has_many_attached :photos
  has_many_attached :videos
  has_many :investments
  has_many :investors, through: :investments, source: :user
end
