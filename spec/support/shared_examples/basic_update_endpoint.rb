shared_examples 'basic update endpoint' do
  describe example 'with valid information'
    before do
      req
    end

    it 'returns status code ok' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns the correct schema for article' do
      expect(response).to match_response_schema(schema_name, strict: true)
    end
  end
end
