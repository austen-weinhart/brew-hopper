require "rails_helper"

describe Beer do
  it "has a valid factory" do
    expect(FactoryGirl.build(:beer)).to (be_valid)
  end
end # end of Beer model spec