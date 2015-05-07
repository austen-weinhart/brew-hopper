require 'rails_helper'

RSpec.describe BrewerController, :type => :controller do
  
end


describe "GET #index" do
    before :each do
      get :index
    end
    
    it "should render the correct page" do
      expect(response).to render_template("index")
    end
end