require "rails_helper"

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    before :each do
      get :new
    end

    it "should render the correct page" do
      expect(response).to render_template :new
    end

    it "should have a status code of 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #edit" do

  	before :each do
    	@test_user = User.create(first_name: "Sean", last_name: "Bean", email: "example@example.com", password: "123456")
      get :edit, id: @test_user.id
    end

    it "should render the correct page" do
    	expect(response).to render_template :edit
    end

    it "should have a status code of 200" do
    	expect(response).to have_http_status(200)
    end
  end

  describe "GET #create" do
    before do
      get :new
    end

    it "should render the correct page" do
      expect{FactoryGirl.create(:user)}.to change(User, :count).by(1)
    end
  end
end

# describe "POST #create" do
#     before do
#       # @test_beer = Beer.create!(name: "Blaise Beer")
#       get :new
#     end

#     it "persists an item to the DB" do
#       expect {Beer.create(name: "Blaise Beer")}.to change(Beer, :count).by(1)
#       # expect {post :create, beer: valid_attributes}.to change(Beer, :count).by(1)
#       # like get :index or :new
#     end
#   end





