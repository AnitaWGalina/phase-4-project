class CreateShares < ActiveRecord::Migration[6.1]
  def change
    create_table :shares do |t|
      t.integer :user_id
      t.datetime :from
      t.datetime :to
      t.integer :balance
      t.integer :interest

      t.timestamps
    end
  end
end
