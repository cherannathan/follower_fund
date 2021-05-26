class Project < ApplicationRecord
  belongs_to :user
  validates :status, presence: true
  validates :goal_amount, presence: true
  validates :revenue_split, presence: true
  validates :deadline, presence: true
  has_many_attached :photo
  has_many_attached :video
  has_many :investments
  has_many :investors, through: :investments, source: :user
end
