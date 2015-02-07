class EditEntryAmount < ActiveRecord::Migration
  def change
    change_table :entries do |t|
      t.change :amount, :decimal, :precision => 10, :scale => 2
    end
  end
end
