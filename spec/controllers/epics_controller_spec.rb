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

describe EpicsController do

  # This should return the minimal set of attributes required to create a valid
  # Epic. As you add validations to Epic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EpicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all epics as @epics" do
      epic = Epic.create! valid_attributes
      get :index, {}, valid_session
      assigns(:epics).should eq([epic])
    end
  end

  describe "GET show" do
    it "assigns the requested epic as @epic" do
      epic = Epic.create! valid_attributes
      get :show, {:id => epic.to_param}, valid_session
      assigns(:epic).should eq(epic)
    end
  end

  describe "GET new" do
    it "assigns a new epic as @epic" do
      get :new, {}, valid_session
      assigns(:epic).should be_a_new(Epic)
    end
  end

  describe "GET edit" do
    it "assigns the requested epic as @epic" do
      epic = Epic.create! valid_attributes
      get :edit, {:id => epic.to_param}, valid_session
      assigns(:epic).should eq(epic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Epic" do
        expect {
          post :create, {:epic => valid_attributes}, valid_session
        }.to change(Epic, :count).by(1)
      end

      it "assigns a newly created epic as @epic" do
        post :create, {:epic => valid_attributes}, valid_session
        assigns(:epic).should be_a(Epic)
        assigns(:epic).should be_persisted
      end

      it "redirects to the created epic" do
        post :create, {:epic => valid_attributes}, valid_session
        response.should redirect_to(Epic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved epic as @epic" do
        # Trigger the behavior that occurs when invalid params are submitted
        Epic.any_instance.stub(:save).and_return(false)
        post :create, {:epic => { "name" => "invalid value" }}, valid_session
        assigns(:epic).should be_a_new(Epic)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Epic.any_instance.stub(:save).and_return(false)
        post :create, {:epic => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested epic" do
        epic = Epic.create! valid_attributes
        # Assuming there are no other epics in the database, this
        # specifies that the Epic created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Epic.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => epic.to_param, :epic => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested epic as @epic" do
        epic = Epic.create! valid_attributes
        put :update, {:id => epic.to_param, :epic => valid_attributes}, valid_session
        assigns(:epic).should eq(epic)
      end

      it "redirects to the epic" do
        epic = Epic.create! valid_attributes
        put :update, {:id => epic.to_param, :epic => valid_attributes}, valid_session
        response.should redirect_to(epic)
      end
    end

    describe "with invalid params" do
      it "assigns the epic as @epic" do
        epic = Epic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Epic.any_instance.stub(:save).and_return(false)
        put :update, {:id => epic.to_param, :epic => { "name" => "invalid value" }}, valid_session
        assigns(:epic).should eq(epic)
      end

      it "re-renders the 'edit' template" do
        epic = Epic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Epic.any_instance.stub(:save).and_return(false)
        put :update, {:id => epic.to_param, :epic => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested epic" do
      epic = Epic.create! valid_attributes
      expect {
        delete :destroy, {:id => epic.to_param}, valid_session
      }.to change(Epic, :count).by(-1)
    end

    it "redirects to the epics list" do
      epic = Epic.create! valid_attributes
      delete :destroy, {:id => epic.to_param}, valid_session
      response.should redirect_to(epics_url)
    end
  end

end
