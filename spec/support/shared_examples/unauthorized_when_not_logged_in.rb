shared_examples 'unauthorized when not logged in' do
  context 'when the user is not logged in' do
    it 'returns status code unauthorized' do
      req
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
