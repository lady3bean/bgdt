class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|

      t.text :desc
      t.decimal :amount
      t.belongs_to :credit_account, index: true
      t.belongs_to :debit_account, index: true

      t.timestamps null: false
    end
  end
end
