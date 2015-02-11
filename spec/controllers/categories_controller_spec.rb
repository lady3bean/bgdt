require 'rails_helper'

RSpec.describe CategoriesController do
  let(:valid_attributes) {
    { cat: 'test cat' }
  }

  let(:invalid_attributes) {
    { cat: nil }
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
    it 'assigns @category' do
      get :new
      expect(assigns(:category)).to be_a_new Category
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new category' do
        expect {
          post :create, category: valid_attributes
        }.to change(Category, :count).by 1
      end
      it 'assigns @category' do
        post :create, category: valid_attributes
        expect(assigns(:category)).to be_a Category
        expect(assigns(:category)).to be_persisted
      end
      it 'redirects to the homepage' do
        post :create, category: valid_attributes
        expect(response).to redirect_to :action=>'index', :controller=>'home_pages'
      end
    end
    context 'with invalid attributes' do
      it 'assigns @category but does not save a new category' do
        post :create, category: invalid_attributes
        expect(assigns(:category)).to be_a_new Category
      end
    end
  end

   describe 'GET show' do
    it 'has a 200 status code' do
      category = Category.create!(valid_attributes)
      get :show, id: category
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      category = Category.create!(valid_attributes)
      get :show, id: category
      expect(response).to render_template('show')
    end

    it 'assigns @category' do
      category = Category.create!(valid_attributes)
      get :show, id: category
      expect(assigns(:category)).to eq category
    end
  end
end