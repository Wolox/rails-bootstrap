require 'rails_helper'

describe TestModelsController do
  describe '#create' do
    it 'works when creating something' do
      post :create
      expect(JSON.parse(response.body)['id']).not_to be_nil
    end
  end

  describe '#index' do
    it 'works when getting the index' do
      get :index
      expect(JSON.parse(response.body)).to be_paginated
    end
  end
end
