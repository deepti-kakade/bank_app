class FixedDeposit < ActiveRecord::Base
  validates_presence_of :email, :account_number, :tenure_of_deposit_year, 
                        :tenure_of_deposit_month, :tenure_of_deposit_day, 
                        :maturity_proceed, :contact_no, :age, :type_of_deposit
  validates :deposit_amount, presence: true, numericality: true
  validates :tenure_of_deposit_year, numericality: true
  validates :tenure_of_deposit_month, numericality: true
  validates :tenure_of_deposit_day, numericality: true
  validates :age, numericality: true
end
