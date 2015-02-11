require 'rails_helper'

RSpec.describe 'routes for accounts' do
  it 'routes GET /accounts to the accounts controller' do
    expect(get('/accounts')).to route_to('accounts#index')
  end

  it 'routes GET /accounts/new to the accounts controller' do
    expect(get('/accounts/new')).to route_to('accounts#new')
  end

  it 'routes POST /accounts to the accounts controller' do
    expect(post('/accounts')).to route_to('accounts#create')
  end
end
