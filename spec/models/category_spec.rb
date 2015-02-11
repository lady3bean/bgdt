require 'rails_helper'

RSpec.describe Category do

  describe '.create' do
    it 'creates a new category' do
      expect(Category.create()).to be_a Category
    end

    it 'is invalid without a cat' do
      expect(Category.create()).not_to be_valid
    end

    it 'is valid with a name' do
      expect(Category.create(cat: 'Test')).to be_valid
    end
  end
end