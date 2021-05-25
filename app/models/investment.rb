class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :amount, presence: true
  validates :status, presence: true
  monetize :price_cents
end
