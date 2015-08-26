class FixedDepositsController < ApplicationController

  def new
	@fixed_deposit = FixedDeposit.new
  end

  def create
	@fixed_deposit = FixedDeposit.new(deposit_params)
	if @fixed_deposit.save
		redirect_to root_path, notice:  'Fixed deposit cretaed.'
	else 
		render :new
	end
  end

  private

  def deposit_params
  	params.require(:fixed_deposit).permit(:account_number, :deposit_amount, :email, :contact_no,
  		                                   :pan, :tenure_of_deposit_year, :tenure_of_deposit_month, 
  		                                   :tenure_of_deposit_day, :maturity_proceed, :type_of_deposit, :age)
  end
end
