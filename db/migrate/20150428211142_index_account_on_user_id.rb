class IndexAccountOnUserId < ActiveRecord::Migration
  def change
    change_table :accounts do |t|
      t.belongs_to :user, index: true
    end
  end
end
