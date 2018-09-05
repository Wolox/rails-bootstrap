shared_examples 'forbidden for not owners' do
  let!(:not_owner) { create(:user) }

  before do
    sign_in not_owner
  end

  it 'returns status code forbidden' do
    req
    expect(response).to have_http_status(:forbidden)
  end
end
