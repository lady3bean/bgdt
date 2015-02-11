require 'rails_helper'

RSpec.describe 'routes for categories' do
  it 'routes GET /categories/new to the categories controller' do
    expect(get('/categories/new')).to route_to('categories#new')
  end

  it 'routes POST /categories to the categories controller' do
    expect(post('/categories')).to route_to('categories#create')
  end

  it 'routes GET /categories/1 to the categories controller and sets id' do
    expect(get('/categories/1')).to route_to(
      controller: 'categories',
      action: 'show',
      id: '1'
    )
  end
end
