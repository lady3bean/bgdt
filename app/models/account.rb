class Account < ActiveRecord::Base
  def entries
    Entry.where("credit_account_id = ? OR debit_account_id = ?", self.id, self.id)
  end

  def balance
    entries.sum(:amount)
  end

  validates :name, presence: true
end