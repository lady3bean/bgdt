class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat
    end
  end
end
