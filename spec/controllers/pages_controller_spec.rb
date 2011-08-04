require 'spec_helper'

describe PagesController do
	render_views

  before(:each) do
	@base_title = "Ruby on Rails Tutorial Sample App"
	@success = "should be successful"
	@right_title = "should have the right title"
  end

  describe "GET 'home'" do
    it @success do
      get 'home'
      response.should be_success
    end

    it @right_title do
      get 'home'
      response.should have_selector("title",
                    :content => @base_title + " | Home")
    end
  end

  describe "GET 'contact'" do
    it @success do
      get 'contact'
      response.should be_success
    end

    it @right_title do
      get 'contact'
      response.should have_selector("title",
                    :content => @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it @success do
      get 'about'
      response.should be_success
    end

    it @right_title do
      get 'about'
      response.should have_selector("title",
                    :content => @base_title + " | About")
    end
  end

 describe "GET 'help'" do
    it @success do
      get 'help'
      response.should be_success
    end

    it @right_title do
      get 'help'
      response.should have_selector("title",
                    :content => @base_title + " | Help")
    end
  end
end
