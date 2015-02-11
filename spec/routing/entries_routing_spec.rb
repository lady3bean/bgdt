require 'rails_helper'

# entries is a top level resource, but does belong to account, and new entries require debit, credit, and category ids associated with it (even though it's not routing through account or category paths). These tests are passing, but should I be specifying the ids for a more precise test?

RSpec.describe 'routes for entries' do
   it 'routes GET /entries/new to the entries controller' do
    expect(get('/entries/new')).to route_to('entries#new')
  end

  it 'routes POST /entries to the entries controller' do
    expect(post('/entries')).to route_to('entries#create')
  end
end

