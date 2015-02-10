Entry.delete_all
Account.delete_all
Category.delete_all

personal = Account.create!(name: "Personal")
house = Account.create!(name: "House")
outgoing = Account.create!(name: "Outgoing")

rent = Category.create!(cat: "Rent")
utilities = Category.create!(cat: "Utilities")
living = Category.create!(cat: "Living Expenses")
Category.create!(cat: "Gas")
Category.create!(cat: "Car")
Category.create!(cat: "Food")
Category.create!(cat: "Transportation")

Entry.create!(desc: "Entry 1", amount: 20.00, credit_account: house, debit_account: outgoing, category: rent)

Entry.create!(desc: "Entry 2", amount: 34.00, credit_account: personal, debit_account: outgoing, category: utilities)

Entry.create!(desc: "Entry 3", amount: 55.00, credit_account: personal, debit_account: house, category: living)