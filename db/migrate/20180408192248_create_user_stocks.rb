class CreateUserStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stocks do |t|
      t.references :user, foreign_key: true, index: true
      t.references :stock, foreign_key: true, index: true

      t.timestamps
    end
  end
end
