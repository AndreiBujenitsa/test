class Offer < ApplicationRecord
  validates_presence_of     :name, :advertiser, :payout
  validates_numericality_of :payout, greater_than: 0, less_than: 1_000_000
end
