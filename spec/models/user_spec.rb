require "rails_helper"

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to (be_valid)
  end

  it "should have a valid first name" do
    user = FactoryGirl.build_stubbed(:user)
    expect(user.first_name).to eq("Sean")
  end


  it "should return the last name of the user" do
    user = FactoryGirl.build_stubbed(:user)
    expect(user.last_name).to eq("Bean")
  end
end
