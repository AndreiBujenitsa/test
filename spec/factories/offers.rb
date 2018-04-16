FactoryBot.define do
  factory :offer_with_negative_payout, class: Offer do
    name "Name1"
    advertiser  "Advertiser1"
    payout -33
  end
end