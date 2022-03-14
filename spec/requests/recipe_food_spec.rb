require 'rails_helper'

RSpec.describe 'RecipeFoods', type: :request do
  describe 'GET /quantity:integer' do
    it 'returns http success' do
      get '/recipe_food/quantity:integer'
      expect(response).to have_http_status(:success)
    end
  end
end
