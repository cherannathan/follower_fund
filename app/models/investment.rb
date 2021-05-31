class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :order, dependent: :destroy
  validates :price_cents, presence: true
  validates :status, presence: true
  monetize :price_cents
end
