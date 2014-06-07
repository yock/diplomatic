require 'spec_helper'

describe 'Submit a command' do
  describe 'POST /commands' do
    context 'when the command is valid' do
      let(:command_json) { {"command" => {"text" => "A KIE -> MUN"}}.to_json }
      it 'returns http ok' do
        post '/commands', command_json, json_request_headers
        expect(response.status).to eq(201)
      end

      it 'has an id' do
        post '/commands', command_json, json_request_headers
        expect(response_json['id']).to be_present
      end
    end
  end
end
