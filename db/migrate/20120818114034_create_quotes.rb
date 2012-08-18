class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.date :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.integer :volume
      t.float :adjClose
      t.integer :stock_id

      t.timestamps
    end
  end
end
