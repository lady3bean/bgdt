require 'rails_helper'

RSpec.describe EntriesController do
  let(:valid_attributes) {
    { amount: 22, credit_account_id: 1, debit_account_id: 2 }
  }

  let(:invalid_attributes) {
    { amount: nil, credit_account_id: nil, debit_account_id: nil }
  }

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new
      expect(response.status).to eq 200
    end
    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end
    it 'assigns @entry' do
      get :new
      expect(assigns(:entry)).to be_a_new Entry
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new entry' do
        expect {
          post :create, entry: valid_attributes
        }.to change(Entry, :count).by 1
      end
      it 'assigns @entry' do
        post :create, entry: valid_attributes
        expect(assigns(:entry)).to be_an Entry
        expect(assigns(:entry)).to be_persisted
      end
      it 'redirects to the homepage' do
        post :create, entry: valid_attributes
        expect(response).to redirect_to :action=>'index', :controller=>'home_pages'
      end
    end
    context 'with invalid attributes' do
      it 'assigns @entry but does not save a new entry' do
        post :create, entry: invalid_attributes
        expect(assigns(:entry)).to be_a_new Entry
      end
    end
  end
end