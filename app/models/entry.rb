class Entry < ActiveRecord::Base
  belongs_to :credit_account, class_name: 'Account', foreign_key: 'credit_account_id'
  belongs_to :debit_account, class_name: 'Account', foreign_key: 'debit_account_id'
  belongs_to :category
end