require 'spec_helper'

describe 'Game' do
  describe 'creating a new game' do
    it 'returns the id' do
      post '/api/games', nil, json_request_headers
      expect(response_json).to include('id')
    end
  end
end
