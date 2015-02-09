class IndexEntriesOnCategoryId < ActiveRecord::Migration
  def change
    change_table :entries do |t|
      t.belongs_to :category, index: true
    end
  end
end
