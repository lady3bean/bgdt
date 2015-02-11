require 'rails_helper'

RSpec.feature 'Categories Creation' do
 
  scenario 'create a category' do
    visit '/categories/new'

    fill_in 'category_cat', with: 'A Category'
    click_on 'Create Category'

    expect(page).to have_content(Category.last.cat)
  end
end