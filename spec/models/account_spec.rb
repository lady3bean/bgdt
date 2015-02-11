require 'rails_helper'

RSpec.describe Account do

  describe '.create' do
    it 'creates a new account' do
      expect(Account.create()).to be_a Account
    end

    it 'is invalid without a name' do
      expect(Account.create()).not_to be_valid
    end

    it 'is valid with a name' do
      expect(Account.create(name: 'A Name')).to be_valid
    end
  end
end