class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.integer :user_id
      t.datetime :from
      t.datetime :to
      t.integer :balance
      t.integer :interest

      t.timestamps
    end
  end
end
