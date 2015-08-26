class FixedDepositsController < ApplicationController

	def new
		@fixed_deposit = FixedDeposit.new
	end
end
