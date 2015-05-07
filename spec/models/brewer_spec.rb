require 'rails_helper'

	describe Brewer do
	  it "has a valid factory" do
	    expect(FactoryGirl.build(:brewer)).to (be_valid)
	  end

	  it "has a valid brewery" do
	  	brewer = FactoryGirl.build(:brewer, {brewery: nil})
	  	expect(brewer).to be_invalid
	  end 

	  it "has a valid email" do
	  	brewer = FactoryGirl.build(:brewer, {email: nil})
	  	expect(brewer).to be_invalid
	  end

	  it "has a valid address" do
	  	brewer = FactoryGirl.build(:brewer, {address: nil})
	  	expect(brewer).to be_invalid
	  end

	  it "has a valid state" do
	  	brewer = FactoryGirl.build(:brewer, {state: nil})
	  	expect(brewer).to be_invalid
	  end

	  it "has a valid zip code" do
	  	brewer = FactoryGirl.build(:brewer, {zip_code: nil})
	  	expect(brewer).to be_invalid
	  end
	  




	end # end of Brewer model spec


  
