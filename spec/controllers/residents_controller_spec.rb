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

describe ResidentsController do

  # This should return the minimal set of attributes required to create a valid
  # Resident. As you add validations to Resident, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ResidentsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all residents as @residents" do
      resident = Resident.create! valid_attributes
      get :index, {}, valid_session
      assigns(:residents).should eq([resident])
    end
  end

  describe "GET show" do
    it "assigns the requested resident as @resident" do
      resident = Resident.create! valid_attributes
      get :show, {:id => resident.to_param}, valid_session
      assigns(:resident).should eq(resident)
    end
  end

  describe "GET new" do
    it "assigns a new resident as @resident" do
      get :new, {}, valid_session
      assigns(:resident).should be_a_new(Resident)
    end
  end

  describe "GET edit" do
    it "assigns the requested resident as @resident" do
      resident = Resident.create! valid_attributes
      get :edit, {:id => resident.to_param}, valid_session
      assigns(:resident).should eq(resident)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Resident" do
        expect {
          post :create, {:resident => valid_attributes}, valid_session
        }.to change(Resident, :count).by(1)
      end

      it "assigns a newly created resident as @resident" do
        post :create, {:resident => valid_attributes}, valid_session
        assigns(:resident).should be_a(Resident)
        assigns(:resident).should be_persisted
      end

      it "redirects to the created resident" do
        post :create, {:resident => valid_attributes}, valid_session
        response.should redirect_to(Resident.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved resident as @resident" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resident.any_instance.stub(:save).and_return(false)
        post :create, {:resident => {}}, valid_session
        assigns(:resident).should be_a_new(Resident)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resident.any_instance.stub(:save).and_return(false)
        post :create, {:resident => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested resident" do
        resident = Resident.create! valid_attributes
        # Assuming there are no other residents in the database, this
        # specifies that the Resident created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Resident.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => resident.to_param, :resident => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested resident as @resident" do
        resident = Resident.create! valid_attributes
        put :update, {:id => resident.to_param, :resident => valid_attributes}, valid_session
        assigns(:resident).should eq(resident)
      end

      it "redirects to the resident" do
        resident = Resident.create! valid_attributes
        put :update, {:id => resident.to_param, :resident => valid_attributes}, valid_session
        response.should redirect_to(resident)
      end
    end

    describe "with invalid params" do
      it "assigns the resident as @resident" do
        resident = Resident.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Resident.any_instance.stub(:save).and_return(false)
        put :update, {:id => resident.to_param, :resident => {}}, valid_session
        assigns(:resident).should eq(resident)
      end

      it "re-renders the 'edit' template" do
        resident = Resident.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Resident.any_instance.stub(:save).and_return(false)
        put :update, {:id => resident.to_param, :resident => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested resident" do
      resident = Resident.create! valid_attributes
      expect {
        delete :destroy, {:id => resident.to_param}, valid_session
      }.to change(Resident, :count).by(-1)
    end

    it "redirects to the residents list" do
      resident = Resident.create! valid_attributes
      delete :destroy, {:id => resident.to_param}, valid_session
      response.should redirect_to(residents_url)
    end
  end

end
