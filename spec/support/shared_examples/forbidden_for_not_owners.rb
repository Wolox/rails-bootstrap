shared_examples 'forbidden for not owners' do
  let!(:not_owner) { create(:user) }
  
  describe example 'with invalid access' do

    before do
      sign_in not_owner
    end

    it 'returns status code forbidden' do
      req
      expect(response).to have_http_status(:forbidden)
    end
  end
end
