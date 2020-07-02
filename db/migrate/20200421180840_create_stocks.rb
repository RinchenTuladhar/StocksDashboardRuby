class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :user_id, null: false
      t.string :symbol, null: false
      t.string :background, :default => "#79B3EC"
      t.timestamps
    end
  end
end
