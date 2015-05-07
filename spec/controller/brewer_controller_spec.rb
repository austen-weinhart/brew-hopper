require 'rails_helper'



RSpec.describe BrewersController, :type => :controller do
  before (:each) do  
    @brewer = Brewer.create(brewery: "Dan's Brewery", email: "dan@brewery.com", address: "123 main street", state: "CA", zip_code: 90265)
  end



describe "GET #index" do
  before :each do
    get :index
  end
    
  it "should render the correct page" do
    expect(response).to render_template("index")
  end
    
  it "response should be a success" do
    expect(response).to have_http_status(200)
  end

  it "assigns @brewers to include items" do
    expect(assigns(:brewers)).to include(@brewer1)
  end

end

describe "GET #show" do
  before :each do
    get :show, :id @brewer.id
  end

  it "renders the show template" do
    expect(response).to have_http_status(200)
    expect(response).to render_template :show
  end
end

end