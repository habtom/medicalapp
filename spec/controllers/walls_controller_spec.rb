require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WallsController do

  # This should return the minimal set of attributes required to create a valid
  # Wall. As you add validations to Wall, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all walls as @walls" do
      wall = Wall.create! valid_attributes
      get :index
      assigns(:walls).should eq([wall])
    end
  end

  describe "GET show" do
    it "assigns the requested wall as @wall" do
      wall = Wall.create! valid_attributes
      get :show, :id => wall.id.to_s
      assigns(:wall).should eq(wall)
    end
  end

  describe "GET new" do
    it "assigns a new wall as @wall" do
      get :new
      assigns(:wall).should be_a_new(Wall)
    end
  end

  describe "GET edit" do
    it "assigns the requested wall as @wall" do
      wall = Wall.create! valid_attributes
      get :edit, :id => wall.id.to_s
      assigns(:wall).should eq(wall)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Wall" do
        expect {
          post :create, :wall => valid_attributes
        }.to change(Wall, :count).by(1)
      end

      it "assigns a newly created wall as @wall" do
        post :create, :wall => valid_attributes
        assigns(:wall).should be_a(Wall)
        assigns(:wall).should be_persisted
      end

      it "redirects to the created wall" do
        post :create, :wall => valid_attributes
        response.should redirect_to(Wall.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved wall as @wall" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wall.any_instance.stub(:save).and_return(false)
        post :create, :wall => {}
        assigns(:wall).should be_a_new(Wall)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wall.any_instance.stub(:save).and_return(false)
        post :create, :wall => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested wall" do
        wall = Wall.create! valid_attributes
        # Assuming there are no other walls in the database, this
        # specifies that the Wall created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Wall.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => wall.id, :wall => {'these' => 'params'}
      end

      it "assigns the requested wall as @wall" do
        wall = Wall.create! valid_attributes
        put :update, :id => wall.id, :wall => valid_attributes
        assigns(:wall).should eq(wall)
      end

      it "redirects to the wall" do
        wall = Wall.create! valid_attributes
        put :update, :id => wall.id, :wall => valid_attributes
        response.should redirect_to(wall)
      end
    end

    describe "with invalid params" do
      it "assigns the wall as @wall" do
        wall = Wall.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Wall.any_instance.stub(:save).and_return(false)
        put :update, :id => wall.id.to_s, :wall => {}
        assigns(:wall).should eq(wall)
      end

      it "re-renders the 'edit' template" do
        wall = Wall.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Wall.any_instance.stub(:save).and_return(false)
        put :update, :id => wall.id.to_s, :wall => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested wall" do
      wall = Wall.create! valid_attributes
      expect {
        delete :destroy, :id => wall.id.to_s
      }.to change(Wall, :count).by(-1)
    end

    it "redirects to the walls list" do
      wall = Wall.create! valid_attributes
      delete :destroy, :id => wall.id.to_s
      response.should redirect_to(walls_url)
    end
  end

end
