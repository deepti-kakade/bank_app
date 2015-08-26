class CreateFixedDeposits < ActiveRecord::Migration
  def change
    create_table :fixed_deposits do |t|
      t.string :account_number
      t.integer :deposit_amount
      t.string :type_of_deposit
      t.integer :tenure_of_deposit_year, default: 0
      t.integer :tenure_of_deposit_month, default: 0
      t.integer :tenure_of_deposit_day, default: 0
      t.string :pan
      t.integer :maturity_proceed
      t.string :contact_no
      t.string :email
      t.integer :age
      t.timestamps null: false
    end

    add_index :fixed_deposits, :account_number
    add_index :fixed_deposits, :pan
    add_index :fixed_deposits, :email
    add_index :fixed_deposits, :age
  end
end
