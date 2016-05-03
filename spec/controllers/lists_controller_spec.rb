require 'rails_helper'

describe ListsController do
  context 'user is logged in' do
    let(:user) { create(:user) }
    let(:list) { create(:list, user_id: user.id) }

    before { sign_in user }

    describe 'GET #index' do
      it 'returns 200' do
        get :index
        expect(response).to be_success
      end

      it 'renders the :index template' do
        get :index
        expect(response).to render_template(:index)
      end

      it 'populates an array of lists' do
        list = create(:list, user_id: user.id)

        get :index
        expect(assigns(:lists)).to eq([list])
      end
    end

    describe 'POST #create' do
      context 'with valid attributes' do
        it 'saves the new list to the database' do
          expect {
            post :create, list: attributes_for(:list)
          }.to change(List, :count).by(1)
        end
      end

      context 'with invalid attributes' do
        it 'does not save the new list to the database' do
          expect {
            post :create, list: attributes_for(:list, title: nil)
          }.to_not change(List, :count)
        end
      end
    end

    describe 'DELETE #destroy' do
      it 'removes the list from the database' do
        expect { delete :destroy, id: list.id }.to change(List, :count).by(-1)
      end

      it 'redirects to the home page' do
        delete :destroy, id: list.id
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
