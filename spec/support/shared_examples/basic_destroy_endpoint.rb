shared_examples 'basic destroy endpoint' do
  it 'destroys the model' do
    expect { req }.to change { model_klass.count }.by(-1)
  end

  it 'returns status code ok', dictum: DICTUM_DESTROY_DESCRIPTION do
    req
    expect(response).to have_http_status(:ok)
  end

  context 'when sending invalid id' do
    let(:model_id) { 0 }

    it 'returns status bad request' do
      req
      expect(response).to have_http_status(:bad_request)
    end
  end
end
