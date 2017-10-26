shared_examples 'basic creation endpoint' do
  it 'creates the model' do
    expect { req }.to change { model_klass.count }.by 1
  end

  it 'returns status code created', dictum: DICTUM_CREATE_DESCRIPTION do
    req
    expect(response).to have_http_status(:created)
  end

  it 'returns the correct schema for the model' do
    if schema_name
      req
      expect(response).to match_response_schema(schema_name, strict: true)
    end
  end
end
