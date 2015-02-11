require 'rails_helper'

RSpec.describe 'routes for home_pages' do
  it 'routes GET /home_pages to the home_pages controller' do
    expect(get('/')).to route_to('home_pages#index')
  end
end