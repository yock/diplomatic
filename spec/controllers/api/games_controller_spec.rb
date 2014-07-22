require 'spec_helper'

describe API::GamesController do
  before(:each) { request.accept = 'application/json' }
  describe 'post create' do
    it 'has a status of 201' do
      post :create
      expect(response.status).to eq(201)
    end
    
    it 'creates a new game' do
      expect{ post :create }.to change(Game, :count).by(1)
    end
  end
end

