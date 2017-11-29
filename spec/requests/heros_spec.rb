require 'rails_helper'

RSpec.describe 'Heros API', type: :request do
  # # initialize test data
  # let!(:heros) { create_list(:hero, 10) }
  # let(:hero_id) { heros.first.id }
  #
  # # Test suite for GET /heros
  # describe 'GET /heros' do
  #   # make HTTP get request before each example
  #   before { get '/heros' }
  #
  #   it 'returns heros' do
  #     # Note `json` is a custom helper to parse JSON responses
  #     expect(json).not_to be_empty
  #     expect(json.size).to eq(10)
  #   end
  #
  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(200)
  #   end
  # end

  # # Test suite for GET /heros/:id
  # describe 'GET /heros/:id' do
  #   before { get "/heros/#{hero_id}" }
  #
  #   context 'when the record exists' do
  #     it 'returns the hero' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(hero_id)
  #     end
  #
  #     it 'returns status code 200' do
  #       expect(response).to have_http_status(200)
  #     end
  #   end
  #
  #   context 'when the record does not exist' do
  #     let(:hero_id) { 100 }
  #
  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #     end
  #
  #     it 'returns a not found message' do
  #       expect(response.body).to match(/Couldn't find Hero/)
  #     end
  #   end
  # end
end
