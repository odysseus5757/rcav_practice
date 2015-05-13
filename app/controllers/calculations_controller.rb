class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt

    @number = params[:id].to_f
    @sqrt = Math.sqrt(@number)

  end

  def square

    @number = params[:id].to_f
    @square = @number * @number

  end

  def pmt

    @rate = params[:interest_rate].to_f / 100
    @number_of_payments = params[:number_of_payments].to_i
    @principal = params[:principal_value].to_f

    @pmt = (@rate * @principal)/(1 - (1 + @rate)**-@number_of_payments)

  end
end
