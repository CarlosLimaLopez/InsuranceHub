class InsurancePolicy < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :category, inclusion: { in: %w(cancellation lost_items medical travel_assistance) }
end
