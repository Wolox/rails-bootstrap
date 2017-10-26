shared_examples 'bad request when it does not exist' do
  let(:req) { get :show, params: { id: invalid_id } }

  context "when model doesn't exist" do
    let(:invalid_id) { 0 }

    it 'returns status code bad request' do
      req
      expect(response).to have_http_status(:bad_request)
    end
  end
end
