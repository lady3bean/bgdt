class Account < ActiveRecord::Base
  has_many :credit_accounts, class_name: 'Entry'
  has_many :debit_accounts, class_name: 'Entry'
end