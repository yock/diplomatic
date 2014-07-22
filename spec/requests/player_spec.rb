require 'spec_helper'

describe 'Player' do
  describe 'joining a game' do
    it 'returns the assigned super power' do
      omniauth_login
      game = Game.create!
      post "/api/games/#{game.id}/players", nil, json_request_headers
      expect(response.status).to eq(201)
    end
  end
end
