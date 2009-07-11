require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AirlinesController do

  def mock_airline(stubs={})
    @mock_airline ||= mock_model(Airline, stubs)
  end

  describe "GET index" do
    it "assigns all airlines as @airlines" do
      Airline.stub!(:find).with(:all).and_return([mock_airline])
      get :index
      assigns[:airlines].should == [mock_airline]
    end
  end

  describe "GET show" do
    it "assigns the requested airline as @airline" do
      Airline.stub!(:find).with("37").and_return(mock_airline)
      get :show, :id => "37"
      assigns[:airline].should equal(mock_airline)
    end
  end

  describe "GET new" do
    it "assigns a new airline as @airline" do
      Airline.stub!(:new).and_return(mock_airline)
      get :new
      assigns[:airline].should equal(mock_airline)
    end
  end

  describe "GET edit" do
    it "assigns the requested airline as @airline" do
      Airline.stub!(:find).with("37").and_return(mock_airline)
      get :edit, :id => "37"
      assigns[:airline].should equal(mock_airline)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created airline as @airline" do
        Airline.stub!(:new).with({'these' => 'params'}).and_return(mock_airline(:save => true))
        post :create, :airline => {:these => 'params'}
        assigns[:airline].should equal(mock_airline)
      end

      it "redirects to the created airline" do
        Airline.stub!(:new).and_return(mock_airline(:save => true))
        post :create, :airline => {}
        response.should redirect_to(airline_url(mock_airline))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved airline as @airline" do
        Airline.stub!(:new).with({'these' => 'params'}).and_return(mock_airline(:save => false))
        post :create, :airline => {:these => 'params'}
        assigns[:airline].should equal(mock_airline)
      end

      it "re-renders the 'new' template" do
        Airline.stub!(:new).and_return(mock_airline(:save => false))
        post :create, :airline => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested airline" do
        Airline.should_receive(:find).with("37").and_return(mock_airline)
        mock_airline.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :airline => {:these => 'params'}
      end

      it "assigns the requested airline as @airline" do
        Airline.stub!(:find).and_return(mock_airline(:update_attributes => true))
        put :update, :id => "1"
        assigns[:airline].should equal(mock_airline)
      end

      it "redirects to the airline" do
        Airline.stub!(:find).and_return(mock_airline(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(airline_url(mock_airline))
      end
    end

    describe "with invalid params" do
      it "updates the requested airline" do
        Airline.should_receive(:find).with("37").and_return(mock_airline)
        mock_airline.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :airline => {:these => 'params'}
      end

      it "assigns the airline as @airline" do
        Airline.stub!(:find).and_return(mock_airline(:update_attributes => false))
        put :update, :id => "1"
        assigns[:airline].should equal(mock_airline)
      end

      it "re-renders the 'edit' template" do
        Airline.stub!(:find).and_return(mock_airline(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested airline" do
      Airline.should_receive(:find).with("37").and_return(mock_airline)
      mock_airline.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the airlines list" do
      Airline.stub!(:find).and_return(mock_airline(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(airlines_url)
    end
  end

end
