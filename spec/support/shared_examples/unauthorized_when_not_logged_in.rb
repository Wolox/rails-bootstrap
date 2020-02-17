shared_examples 'unauthorized when not logged in' do
  describe example 'with unauthorized token' do
    before do
      req
    end

    it 'returns status code unauthorized' do
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
