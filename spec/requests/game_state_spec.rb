require 'spec_helper'

describe 'Game state' do
  describe 'one unit' do
    before(:each) do 
      create(:unit)
    end
    it 'has one unit' do
      get '/units', nil, json_request_headers
      expect(response_json.length).to eq 1
    end
    it 'has the unit type' do
      get '/units', nil, json_request_headers
      expect(response_json.first['unit_type']).to be_present
    end
  end
end
