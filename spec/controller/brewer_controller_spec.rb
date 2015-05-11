require 'rails_helper'



RSpec.describe BrewersController, :type => :controller do
  before (:each) do  
    @brewer1 = Brewer.create(brewery: "Dan's Brewery", email: "dan@brewery.com", address: "123 main street", state: "CA", zip_code: 90265)
    @brewer2 = Brewer.create(brewery: "Austen's Brewery", email: "austen@brewery.com", address: "789 south street", state: "CA", zip_code: 90265)
 
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
      get :show, id: @brewer1.id
    end

    it "renders the show template" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #new" do
    before do
      get :new
    end

    it "renders the new template with status 200" do
      expect(response).to render_template("new")
      expect(response).to have_http_status(200)
    end

    it "makes a new brewer" do
      expect(assigns(:brewer)).to be_a(Brewer)
    end

    it "is not persisted" do 
        expect{Brewer.new}.to change(Brewer, :count).by(0)
      end
  end

  describe "POST #create" do
    before do
      get :new
    end

    it "persists an item to the DB" do
       expect {Brewer.create(brewery: "Blaise Beer")}.to change(Brewer, :count).by(1)
    end
  end

end