require 'rails_helper'

RSpec.describe Brewer, type: :model do

	it "should have a brewer name brooklyn" do
		Brewer = FactoryGirl.build(:brewer)
    expect(brewer).to eq("brooklyn")
    end
  end
end