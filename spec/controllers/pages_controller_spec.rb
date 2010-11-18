require 'spec_helper'

describe PagesController do
  render_views
  
  describe "pages/home.html.erb" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it  "should have the right title" do
      render
      rendered.should contain("Ruby on Rails")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

end
