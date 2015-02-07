Entry.delete_all
Account.delete_all

num_accounts = 10
puts "Creating #{num_accounts} accounts"
1.upto(num_accounts) do |i|
  account = Account.create!(name: "Account#{i}")
end

def rand_price
  rand(1..10) + rand(1..100).to_f/100
end

credit_account = Account.first
debit_account = Account.second
Entry.create!(desc: "Entry 1", amount: rand_price, credit_account: credit_account, debit_account: debit_account)

credit_account = Account.first
debit_account = Account.last
Entry.create!(desc: "Entry 2", amount: rand_price, credit_account: credit_account, debit_account: debit_account)

credit_account = Account.second
debit_account = Account.last
Entry.create!(desc: "Entry 3", amount: rand_price, credit_account: credit_account, debit_account: debit_account)