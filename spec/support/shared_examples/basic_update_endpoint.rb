shared_examples 'basic update endpoint' do
  it 'returns status code ok', dictum: DICTUM_UPDATE_DESCRIPTION do
    req
    expect(response).to have_http_status(:ok)
  end

  it 'returns the correct schema for article' do
    req
    expect(response).to match_response_schema(schema_name, strict: true)
  end
end
