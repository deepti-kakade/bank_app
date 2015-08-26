class CreateFixedDeposits < ActiveRecord::Migration
  def change
    create_table :fixed_deposits do |t|
      t.string :account_number
      t.integer :deposit_amount
      t.string :type_of_deposit
      t.integer :tenure_of_deposit_years
      t.integer :tenure_of_deposit_months
      t.integer :tenure_of_deposit_days
      t.string :pan
      t.integer :maturity_proceed
      t.string :contact_no
      t.string :email

      t.timestamps null: false
    end
  end
end
