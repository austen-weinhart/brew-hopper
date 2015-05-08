require 'rails_helper'

RSpec.describe BeersController, :type => :controller do
  before(:each) do
    @beer1 = Beer.create(name:"Arrogant Bastard", abv: 4.5, availability: "Year-Round")
    @beer2 = Beer.create(name:"Brother Thelonius", abv: 10.0, availability: "Seasonal")
  end

  ####################################################################################
  ## GET #index
  ####################################################################################

  describe "GET #index" do
    before :each do # before actions tell the program to set a default environment
      get :index
    end

    it "should render the correct page" do
      expect(response).to render_template("index")
    end

    it "have status code of 200" do
      expect(response).to have_http_status(200)
    end

    it "assigns @beers to include beers" do
      expect(assigns(:beers)).to include(@beer1, @beer2)
    end

  end # end of describe get index

  ####################################################################################
  ## GET #show
  ####################################################################################

  describe "GET #show" do
    before :each do
      get :show, id: @beer1.id
    end

    it "should render the correct view template with status 200" do
      expect(response).to render_template :show
      expect(response).to have_http_status(200)
    end

    it "should assign the beer to @beer" do
      expect(assigns(:beer)).to eq(@beer1)
    end
  end # end of describe get show

  ####################################################################################
  ## GET #new
  ####################################################################################

  describe "GET #new" do
    before do
      get :new
    end

    it "renders the new template with status 200" do
      expect(response).to render_template("new")
      expect(response).to have_http_status(200)
    end
      
    it "makes a new Beer" do
      expect(assigns(:beer)).to be_a(Beer)
    end

    it "is not persisted" do 
      expect{Beer.new}.to change(Beer, :count).by(0)
    end
  end # end of describe get new

  ####################################################################################
  ## POST #create
  ####################################################################################

  describe "POST #create" do
    before do
      # @test_beer = Beer.create!(name: "Blaise Beer")
      get :new
    end

    it "persists an item to the DB" do
      expect {Beer.create(name: "Blaise Beer")}.to change(Beer, :count).by(1)
      # expect {post :create, beer: valid_attributes}.to change(Beer, :count).by(1)
      # like get :index or :new
    end
  end

  ####################################################################################
  ## GET #edit
  ####################################################################################
  describe "GET #edit" do
    before do
      get :edit, id: @beer1.id
    end
    
    it "renders the edit template with status 200" do
      expect(response).to render_template("edit")
      expect(response).to have_http_status(200)
    end

    it "should assign the beer to @beer" do
      expect(assigns(:beer)).to eq(@beer1)
    end 
  end

  ####################################################################################
  ## PUT/PATCH #update
  ####################################################################################

  # describe "PUT/PATCH #update" do
  #   before do
  #       @test_beer = Beer.create(name: "Blaise Beer")
  #       get :edit, id: @test_beer.id,
  #   end

  #   describe "with successful update" do
  #     let :new_attributes do
  #       {
  #         :name => "Colette",
  #         :abv => 9.5,
  #         :availability => "Year-Round"
  #       }
  #     end

  #     before do
  #       # remember to use line 2  #before_action :set_item, 
  #       # only: [:show, :edit, :update, :destroy] in beers 
  #       # controller to pass these tests
  #       patch :update, id: @test_beer.id,
  #       beer: new_attributes
  #       get :show, id: @test_beer.id
  #     end

  #     it "should update the beer record in the database" do
  #       expect(@test_beer.reload.qty).to eq(5)
  #     end

  #     it "redirect to the show path for this beer" do
  #       #expect(response).to redirect_to beer_path
  #       # get :edit
  #       expect(response).to render_template :show 
  #       #, id: @test_beer.id 
  #     end
      
  #   end

  #   describe "with unsuccessful update" do
  #     let :invalid_update_attributes do
  #       {
  #         :name => ""
  #       }
  #     end

  #     before do
  #       put :update, id: @test_beer.id, beer: invalid_update_attributes
  #       get :edit, id: @test_beer.id
  #     end

  #     describe "should not update the beer record in the database" do
  #       it "if the beer qty to 0" do
  #         expect(@test_beer.reload.qty).to_not be_nil
  #       end
  #       it "if the beer name is nil" do
  #         expect(@test_beer.reload.name).to_not be_nil
  #       end        
  #     end
      
  #     it "should rerender the edit view template" do
  #       expect(response).to render_template :edit
  #     end
  #   end
  # end

  ####################################################################################
  ## DELETE #destroy
  ####################################################################################
  describe "DELETE #destroy" do
     before do
       @test_beer = Beer.create!(name: "Blaise Beer")
       get :index
     end

     it "deletes an beer from the DB" do
      # raise @test_beer.inspect
       expect {delete :destroy, id: @test_beer.id}.to change(Beer, :count).by(-1)
     end

     it "redirects to index page" do
       expect(response).to render_template :index
     end
   end

end # end of beers controller spec
