class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
    render :new
  end
  
  def create
    @transaction = Transaction.new(secure_params)
    if @bal != 0.00
      bal = params[:transaction]
      @bal = @transaction.bal.to_f
      dep = params[:transaction]
      @dep = @transaction.dep.to_f
      wdl = params[:transaction]
      @wdl = @transaction.wdl.to_f

      render :create
    else
      render :new
    end
  end

  private
  
  def secure_params
    params.require(:transaction).permit(:bal, :dep, :wdl)
  end
end