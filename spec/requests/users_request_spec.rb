require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it '正常なレスポンスを返す' do
    get new_user_registration_path
    expect(response).to have_http_status 200
  end
  it '正常なレスポンスを返す' do
    get new_user_session_path
    expect(response).to have_http_status 200
  end
end
