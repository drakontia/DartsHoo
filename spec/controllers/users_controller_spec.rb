require 'rails_helper'

describe UsersController, type: :controller do

  let(:user) { create(:user, password: 'password', password_confirmation: 'password') }

  before :each do
    sign_in(user)
  end

  describe 'GET #show' do
    it "assigns the requested user to @user" do
      get :show, params: { id: user }
      expect(response.status).to eq 200
      expect(assigns(:user)).to eq user
      expect(response).to render_template :show
    end
  end

  describe 'POST #create' do
    it "creates the validated user from params" do
      post :create, params: { user: attributes_for(:user) }
      expect(response).to redirect_to
    end
  end

  describe 'PATCH #update' do
    it "locates the requested @user" do
      patch :update, params: { id: user, user: attributes_for(:user) }
      expect(assigns(:user)).to eq user
    end

    it "changes @user's attributes" do
      patch :update, params: { id: user, user: attributes_for(:user) }
      user.reload
      expect(user.user_name).to eq('John Doe')
    end
  end

  describe 'delete #destroy' do
    it "deletes the article" do
      expect{
        delete :destroy, params: { id: user }
      }.to change(User,:count).by(-1)
    end
  end

end
