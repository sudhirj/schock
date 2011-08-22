require 'spec_helper'


describe ChocolatesController do

  def valid_attributes
    {
      :name => 'Almond Truffles',
      :desc => 'Dark Chocolate Truffles made with pure Almonds'
    }
  end

  describe "GET index" do
    it "assigns all chocolates as @chocolates" do
      chocolate = Chocolate.create! valid_attributes
      get :index
      assigns(:chocolates).should eq([chocolate])
    end
  end

  describe "GET show" do
    it "assigns the requested chocolate as @chocolate" do
      chocolate = Chocolate.create! valid_attributes
      get :show, :id => chocolate.id.to_s
      assigns(:chocolate).should eq(chocolate)
    end
  end

  describe "GET new" do
    it "assigns a new chocolate as @chocolate" do
      get :new
      assigns(:chocolate).should be_a_new(Chocolate)
    end
  end

  describe "GET edit" do
    it "assigns the requested chocolate as @chocolate" do
      chocolate = Chocolate.create! valid_attributes
      get :edit, :id => chocolate.id.to_s
      assigns(:chocolate).should eq(chocolate)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Chocolate" do
        expect {
          post :create, :chocolate => valid_attributes
        }.to change(Chocolate, :count).by(1)
      end

      it "assigns a newly created chocolate as @chocolate" do
        post :create, :chocolate => valid_attributes
        assigns(:chocolate).should be_a(Chocolate)
        assigns(:chocolate).should be_persisted
      end

      it "redirects to the created chocolate" do
        post :create, :chocolate => valid_attributes
        response.should redirect_to(Chocolate.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved chocolate as @chocolate" do
        # Trigger the behavior that occurs when invalid params are submitted
        Chocolate.any_instance.stub(:save).and_return(false)
        post :create, :chocolate => {}
        assigns(:chocolate).should be_a_new(Chocolate)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Chocolate.any_instance.stub(:save).and_return(false)
        post :create, :chocolate => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested chocolate" do
        chocolate = Chocolate.create! valid_attributes
        # Assuming there are no other chocolates in the database, this
        # specifies that the Chocolate created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Chocolate.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => chocolate.id, :chocolate => {'these' => 'params'}
      end

      it "assigns the requested chocolate as @chocolate" do
        chocolate = Chocolate.create! valid_attributes
        put :update, :id => chocolate.id, :chocolate => valid_attributes
        assigns(:chocolate).should eq(chocolate)
      end

      it "redirects to the chocolate" do
        chocolate = Chocolate.create! valid_attributes
        put :update, :id => chocolate.id, :chocolate => valid_attributes
        response.should redirect_to(chocolate)
      end
    end

    describe "with invalid params" do
      it "assigns the chocolate as @chocolate" do
        chocolate = Chocolate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Chocolate.any_instance.stub(:save).and_return(false)
        put :update, :id => chocolate.id.to_s, :chocolate => {}
        assigns(:chocolate).should eq(chocolate)
      end

      it "re-renders the 'edit' template" do
        chocolate = Chocolate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Chocolate.any_instance.stub(:save).and_return(false)
        put :update, :id => chocolate.id.to_s, :chocolate => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested chocolate" do
      chocolate = Chocolate.create! valid_attributes
      expect {
        delete :destroy, :id => chocolate.id.to_s
      }.to change(Chocolate, :count).by(-1)
    end

    it "redirects to the chocolates list" do
      chocolate = Chocolate.create! valid_attributes
      delete :destroy, :id => chocolate.id.to_s
      response.should redirect_to(chocolates_url)
    end
  end

end
