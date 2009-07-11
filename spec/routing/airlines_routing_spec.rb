require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AirlinesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "airlines", :action => "index").should == "/airlines"
    end

    it "maps #new" do
      route_for(:controller => "airlines", :action => "new").should == "/airlines/new"
    end

    it "maps #show" do
      route_for(:controller => "airlines", :action => "show", :id => "1").should == "/airlines/1"
    end

    it "maps #edit" do
      route_for(:controller => "airlines", :action => "edit", :id => "1").should == "/airlines/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "airlines", :action => "create").should == {:path => "/airlines", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "airlines", :action => "update", :id => "1").should == {:path =>"/airlines/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "airlines", :action => "destroy", :id => "1").should == {:path =>"/airlines/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/airlines").should == {:controller => "airlines", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/airlines/new").should == {:controller => "airlines", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/airlines").should == {:controller => "airlines", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/airlines/1").should == {:controller => "airlines", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/airlines/1/edit").should == {:controller => "airlines", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/airlines/1").should == {:controller => "airlines", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/airlines/1").should == {:controller => "airlines", :action => "destroy", :id => "1"}
    end
  end
end
