shared_examples 'basic show endpoint' do
  let(:expected_key) { 'id' }
  let(:req)          { get :show, params: { id: model_id } }

  before do
    req
  end

  context 'when the model exists' do
    it 'returns status code ok', dictum: DICTUM_SHOW_DESCRIPTION do
      expect(response).to have_http_status(:ok)
    end

    it 'returns the correct schema for model' do
      expect(response).to match_response_schema(schema_name, strict: true)
    end

    it 'returns the desired model' do
      expect(response_body[expected_key]).to eq model_id
    end
  end
end
