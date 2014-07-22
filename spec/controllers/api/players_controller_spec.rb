require 'spec_helper'

describe API::PlayersController do
  before {
    user = create(:user)
    session[:user_id] = user.id
  }
  context 'when the requested game exists' do
    let(:game) { create :game }
    context 'and the game is not full' do
      it 'has has the status 201' do
        post :create, { game_id: game.id }, json_request_headers
        expect(response.status).to be(201)
      end
      it 'creates a player and adds it to the game' do
        post :create, { game_id: game.id }, json_request_headers
        expect(game.players.length).to eq(1)
      end
    end
  end
end
