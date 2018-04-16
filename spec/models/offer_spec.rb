require 'rails_helper'

RSpec.describe Offer, type: :model do
  let (:invalid_offer) {Offer.new}

  it "should have a positive payout" do
    offer = build(:offer_with_negative_payout)
    offer.valid?
    offer.errors[:payout].should_not be_empty
  end

  it "must have a name" do    
    invalid_offer.valid?
    invalid_offer.errors[:name].should_not be_empty
  end

  it "must have an advertiser" do
    invalid_offer.valid?
    invalid_offer.errors[:advertiser].should_not be_empty
  end
end
