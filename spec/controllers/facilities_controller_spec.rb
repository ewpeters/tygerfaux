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

describe FacilitiesController do

  # This should return the minimal set of attributes required to create a valid
  # Facility. As you add validations to Facility, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FacilitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all facilities as @facilities" do
      facility = Facility.create! valid_attributes
      get :index, {}, valid_session
      assigns(:facilities).should eq([facility])
    end
  end

  describe "GET show" do
    it "assigns the requested facility as @facility" do
      facility = Facility.create! valid_attributes
      get :show, {:id => facility.to_param}, valid_session
      assigns(:facility).should eq(facility)
    end
  end

  describe "GET new" do
    it "assigns a new facility as @facility" do
      get :new, {}, valid_session
      assigns(:facility).should be_a_new(Facility)
    end
  end

  describe "GET edit" do
    it "assigns the requested facility as @facility" do
      facility = Facility.create! valid_attributes
      get :edit, {:id => facility.to_param}, valid_session
      assigns(:facility).should eq(facility)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Facility" do
        expect {
          post :create, {:facility => valid_attributes}, valid_session
        }.to change(Facility, :count).by(1)
      end

      it "assigns a newly created facility as @facility" do
        post :create, {:facility => valid_attributes}, valid_session
        assigns(:facility).should be_a(Facility)
        assigns(:facility).should be_persisted
      end

      it "redirects to the created facility" do
        post :create, {:facility => valid_attributes}, valid_session
        response.should redirect_to(Facility.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved facility as @facility" do
        # Trigger the behavior that occurs when invalid params are submitted
        Facility.any_instance.stub(:save).and_return(false)
        post :create, {:facility => {}}, valid_session
        assigns(:facility).should be_a_new(Facility)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Facility.any_instance.stub(:save).and_return(false)
        post :create, {:facility => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested facility" do
        facility = Facility.create! valid_attributes
        # Assuming there are no other facilities in the database, this
        # specifies that the Facility created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Facility.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => facility.to_param, :facility => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested facility as @facility" do
        facility = Facility.create! valid_attributes
        put :update, {:id => facility.to_param, :facility => valid_attributes}, valid_session
        assigns(:facility).should eq(facility)
      end

      it "redirects to the facility" do
        facility = Facility.create! valid_attributes
        put :update, {:id => facility.to_param, :facility => valid_attributes}, valid_session
        response.should redirect_to(facility)
      end
    end

    describe "with invalid params" do
      it "assigns the facility as @facility" do
        facility = Facility.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Facility.any_instance.stub(:save).and_return(false)
        put :update, {:id => facility.to_param, :facility => {}}, valid_session
        assigns(:facility).should eq(facility)
      end

      it "re-renders the 'edit' template" do
        facility = Facility.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Facility.any_instance.stub(:save).and_return(false)
        put :update, {:id => facility.to_param, :facility => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested facility" do
      facility = Facility.create! valid_attributes
      expect {
        delete :destroy, {:id => facility.to_param}, valid_session
      }.to change(Facility, :count).by(-1)
    end

    it "redirects to the facilities list" do
      facility = Facility.create! valid_attributes
      delete :destroy, {:id => facility.to_param}, valid_session
      response.should redirect_to(facilities_url)
    end
  end

end
