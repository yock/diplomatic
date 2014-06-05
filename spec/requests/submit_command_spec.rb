require 'spec_helper'

describe 'Submit a command' do
  describe 'POST /commands' do
    let(:request_headers) { {"Accept" => "application/json", "Content-Type" => "application/json"} }
    context 'when the command is valid' do
      let(:command_json) { {"command" => {"text" => "A KIE -> MUN"}}.to_json }
      it 'returns http ok' do
        post '/commands', command_json, request_headers
        expect(response_status).to eq(201)
      end

      it 'has an id' do
        post '/commands', command_json, request_headers
        expect(response_data['id']).to be_present
      end
    end
  end
end
