require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /sign_out_user" do
    it "returns http success" do
      get "/user/sign_out_user"
      expect(response).to have_http_status(:success)
    end
  end

end
