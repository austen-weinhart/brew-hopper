require "rails_helper"

describe Beer do
  it "has a valid factory" do
    expect(FactoryGirl.build(:beer)).to (be_valid)
  end

  it "must have a name" do
    beer = FactoryGirl.build_stubbed(:beer, {name: nil})
    expect(beer).to be_invalid
  end
  
  # it "cannot save without an abv value" do
  #   beer = FactoryGirl.build_stubbed(:beer, {abv: nil})
  #   expect(beer).to be_invalid
  # end


end # end of Beer model spec