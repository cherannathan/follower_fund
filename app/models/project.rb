class Project < ApplicationRecord
  belongs_to :user
  has_many :investments
  validates :status, presence: true
  validates :goal_amount, presence: true
  validates :revenue_split, presence: true
  validates :deadline, presence: true
  has_many_attached :photo
  has_many_attached :video
end
