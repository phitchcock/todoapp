require 'rails_helper'

describe Api::V1::TodosController do
  describe "GET index" do
    it "renders index json" do
      get :index, format: :json

      expect(response).to be_success
    end 
  end 

  describe "GET show" do
    it "renders show json" do
    
    end
  end
end