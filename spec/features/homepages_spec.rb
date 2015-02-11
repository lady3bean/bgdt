require 'rails_helper'

RSpec.feature 'On The Homepage' do
  scenario 'List All Accounts' do
    Account.create!(name: 'Test Name 1')
    Account.create!(name: 'Test Name 2')
    Account.create!(name: 'Test Name 3')

    visit '/'

    expect(page).to have_content 'Accounts'
    expect(page).to have_content 'Name'
    expect(page).to have_content 'Balance'
  end

  scenario 'Create An Entry' do

    visit '/'

    fill_in 'Amount', with: '22.00'
    fill_in 'entry_desc', with: 'A test'
    select 'Credit account', :from => "entry[credit_account_id]"
    fill_in 'debit_account_id', with: 2
    fill_in 'entry_category_id', with: 'Rent'
    click_on 'Create Entry'

# select "Physics teacher", :from => "teacher_leader[teacher_id]"

    expect(page).to have_content(@accounts.each do |account|
        account.name
        number_to_currency(account.balance)
      end)
    end

    scenario 'Browse By Category' do

      visit '/'

      expect(page).to have_content(@categories.each do |category|
        category.cat
        number_to_currency(category.entries.sum(:amount))
        end)
    end
end
