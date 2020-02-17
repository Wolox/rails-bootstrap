shared_examples 'basic destroy endpoint' do
  describe example 'with valid information' do
    before do
      req
    end

    it 'destroys the model' do
      expect { req }.to change(model_klass, :count).by(-1)
    end
    
    it 'returns status code ok' do
      req
      expect(response).to have_http_status(:ok)
    end
  end


  describe example 'with invalid information' do
    let(:model_id) { 0 }

    before { req }

    it 'returns status bad request' do
      req
      expect(response).to have_http_status(:bad_request)
    end
  end
end
