require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  user = User.create(name: 'Ichsan', email: 'ichsan@meta.com', password: 'password')

  before do
    sign_in(user) # Sign in the user before each test
  end

  describe 'GET #sign_out_user' do
    it 'signs out the user and redirects to the authenticated root path' do
      get :sign_out_user
      expect(response).to redirect_to(authenticated_root_path)
      expect(controller.current_user).to be_nil # Ensure the user is signed out
    end
  end
end
