require 'rails_helper'

RSpec.feature 'Accounts Data Display' do
  scenario 'list all accounts' do

    Account.create!(name: 'Test Name 1')
    Account.create!(name: 'Test Name 2')
    Account.create!(name: 'Test Name 3')

    visit '/accounts'

    expect(page).to have_content 'Accounts'
    expect(page).to have_content 'Name'
    expect(page).to have_content 'Balance'
  end

  scenario 'create an account' do
    visit '/accounts/new'

    fill_in 'Name', with: 'A Name'
    click_on 'Create Account'

    expect(page).to have_content(Account.last.name)
  end
end