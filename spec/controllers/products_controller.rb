require "rails_helper"
require 'byebug'
RSpec.describe ProductsController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
       get :index
       expect(response).to be_success
       expect(response).to have_http_status(200)
     end
  end

  # describe "GET #new" do
  #   it "responds successfully with an HTTP 200 status code" do
  #    get :new
  #    expect(response).to be_success
  #    expect(response).to have_http_status(200)
  #   end
  # end
  #
  # describe "GET #create" do
  #   context 'ask for login with admin permission' do
  #     it "redirect_to sign_in page" do
  #       post :create, prodcut: {title: Faker::Name, price: Faker::Number}
  #       expect(response).to redirect_to "http://test.host/users/sign_in"
  #     end
  #   end
  #   context 'allow user to add prodcut if admin' do
  #     login_admin
  #     it "returns product object" do
  #       post :create, product: {title: Faker::Name, price: Faker::Number}, format: :html
  #       byebug
  #     end
  #   end
  # end
  #
  # describe "GET #edit" do
  #   it "responds successfully with an HTTP 200 status code" do
  #     get :edit
  #     expect(response).to be_success
  #     expect(response).to have_http_status(200)
  #   end
  # end
  #
  # describe "GET #update" do
  #   it "responds successfully with an HTTP 200 status code" do
  #     patch :update
  #     expect(response).to be_success
  #     expect(response).to have_http_status(200)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "responds successfully with an HTTP 200 status code" do
  #     delete :delete
  #     expect(response).to be_success
  #     expect(response).to have_http_status(200)
  #   end
  # end
end
