require 'spec_helper'

describe 'Submit a command' do
  let(:game) { create :game }
  describe 'POST /commands' do
    context 'when the command is valid' do
      let(:command_json) { {"command" => {"text" => "A KIE -> MUN"}}.to_json }
      xit 'returns http ok' do
        omniauth_login
        post "/api/games/#{game.id}/commands", command_json, json_request_headers
        expect(response.status).to eq(201)
      end

      xit 'has an id' do
        post "/api/games/#{game.id}/commands", command_json, json_request_headers
        expect(response_json['id']).to be_present
      end
    end
  end
end
