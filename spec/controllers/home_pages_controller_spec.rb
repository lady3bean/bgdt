require 'rails_helper'

RSpec.describe HomePagesController, :type => :controller do


  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end
    it 'renders the index template' do
      get:index
      expect(response).to render_template('index')
    end
    it 'assigns @accounts' do
      accounts = Account.all
      get :index
      expect(assigns(:accounts)).to eq accounts
    end
    it 'assigns @categories' do
      categories = Category.all
      get :index
      expect(assigns(:categories)).to eq categories
    end
  end
end