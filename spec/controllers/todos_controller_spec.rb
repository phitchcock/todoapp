require 'rails_helper'

describe TodosController do
  describe "GET index" do
    it "sets the @todos variable" do
      one = Todo.create(name: 'one')
      two = Todo.create(name: 'two')

      get :index

      expect(assigns(:todos)).to match_array([one, two])
    end

    it "renders the index template" do
      get :index

      expect(response).to render_template(:index)
    end
  end

  describe "GET new" do
    it "sets the @todo variable" do
      get :new
      expect(assigns(:todo)).to be_new_record
      expect(assigns(:todo)).to be_instance_of(Todo)
    end

    it "renders the new template" do
      get :new

      expect(response).to render_template(:new)
    end
  end

  # describe "POST create" do
  #   it "creates the todo record when input is valid" do
  #     user = User.create(email: "me@me.com", password: 'password')
  #     post :create, todo: {name: "one", description: "what", user: user}
  #     expect(Todo.first.name).to eq("one")
  #     expect(Todo.first.description).to eq("what")
  #   end

  #   it "redirects tot root path" do
  #     post :create, todo: {name: "one", description: "what"}
  #     expect(response).to redirect_to(root_path)
  #   end

  #   it "renders new template when invalid input" do
  #     post :create, todo: {name: "", description: "what"}
  #     expect(response).to render_template(:new)
  #   end
  # end

  describe "GET show" do
    it "sets the @todo variable" do
    end

    it "renders the show template" do
    end
  end
end