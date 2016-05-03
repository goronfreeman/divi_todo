require 'rails_helper'

describe ItemsController do
  context 'user is logged in' do
    let(:user) { create(:user) }
    let(:list) { create(:list, user_id: user.id) }
    let(:item) { create(:item, user_id: user.id, list_id: list.id) }

    before { sign_in user }

    describe 'POST #create' do
      context 'with valid attributes' do
        it 'saves the new item to the database' do
          expect {
            post :create, list_id: list.id, item: attributes_for(:item)
          }.to change(Item, :count).by(1)
        end

        it 'redirects to root_path' do
          post :create, list_id: list.id, item: attributes_for(:item)
          expect(response).to redirect_to(root_path)
        end
      end
    end
  end
end
