require 'rails_helper'

RSpec.describe Entry do

  describe '.create' do
    it 'creates a new entry' do
      expect(Entry.create()).to be_a Entry
    end

    it 'is invalid without an amount' do
      expect(Entry.create(credit_account_id: 1, debit_account_id: 2)).not_to be_valid
    end

    it 'is invalid if the amount is not greater than zero' do
      expect(Entry.create(credit_account_id: 1, debit_account_id: 2, amount: 0)).not_to be_valid
    end

    it 'is invalid without a credit account' do
      expect(Entry.create(amount: 50.00, debit_account_id: 1)).not_to be_valid
    end

    it 'is invalid without a debit account' do
      expect(Entry.create(amount: 50.00, credit_account_id: 1)).not_to be_valid
    end

    it 'is valid with and amount, a credit account, and a debit account' do
      expect(Entry.create(amount: 50.00, credit_account_id: 1, debit_account_id: 1)).to be_valid
    end
  end
end