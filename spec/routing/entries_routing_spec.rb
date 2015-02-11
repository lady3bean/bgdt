require 'rails_helper'

RSpec.describe 'routes for entries' do
   it 'routes GET /entries/new to the entries controller' do
    expect(get('/entries/new')).to route_to('entries#new')
  end

  it 'routes POST /entries to the entries controller' do
    expect(post('/entries')).to route_to('entries#create')
  end
end

