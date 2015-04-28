class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
