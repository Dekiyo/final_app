require 'spec_helper'

describe StoryController do
	let(:user) { FactoryGirl.create(:user) }
	let(:story) {FactoryGirl.create(:story, user: @user)}

	before { sign_in user }

	describe "GET #index" do
		it "succeeds" do
			get 'index'
			response.should be_success
		end

		it "renders the index template" do
			get 'index'
			response.should render_template("story/index")
		end
	end


	describe "POST #create" do
		it "creates a new story" do
			post :create, FactoryGirl.attributes_for(:story, user: @user)
			response.should be_success
		end

		it "redirects to the story show page" do
			post :create, story: FactoryGirl.create(:story)
			response.should redirect_to @story
		end
	end
end
