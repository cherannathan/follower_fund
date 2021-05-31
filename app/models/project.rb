class Project < ApplicationRecord
  belongs_to :user
  has_many :project_genres
  has_many :genres, through: :project_genres
  validates :status, presence: true
  validates :goal_amount, presence: true
  validates :revenue_split, presence: true
  validates :deadline, presence: true
  has_one_attached :photo
  has_one_attached :videos
  has_many :investments
  has_many :investors, through: :investments, source: :user

  def total_investments
    investments.where(status: 'done').pluck(:price_cents).sum
  end

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:title, :bio],
    associated_against: {
      user: [:pseudo],
      genres: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
 def currentamountinvestment
  (investments.where(status: 'done').pluck(:price_cents).sum*100)/goal_amount
 end

 def roiinvestment
    (investments.where(status: 'pending').pluck(:price_cents).sum*100)
 end
end
