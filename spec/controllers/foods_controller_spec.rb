require 'rails_helper'

RSpec.describe FoodsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Food. As you add validations to Food, be sure to
  # adjust the attributes here as well.
  describe 'GET #index' do

		before(:each) do
			3.times { FactoryGirl.create :food}
			get :index
		end

		it 'renders a players array' do
			expect(json_response[:foods]).to have(3).items
		end
	end

	describe 'POST #create' do

		context 'When the record is valid' do
			before(:each) do
				post :create, player: FactoryGirl.attributes_for(:food)
			end

			it 'renders a player resources created by the server' do
				expect(json_response[:food]).to have_key(:id)
		end

			it { should respond_with 201 }

		end
	end

	describe 'PUT/PATCH #update' do

		before(:each) do
			@player = FactoryGirl.create :food
		end

		it "updates the player 'name' to 'tacos'" do
			put :update, { id: @food.id, food: {name: "tacos"}}
			expect(json_response[:food][:name]).to eq "tacos"
		end

	end

	describe 'DELETE #destroy' do

		before(:each) do
			player = FactoryGirl.create :food
			delete :destroy, id: food.id
		end

		it {should respond_with 204 }

	end

end
