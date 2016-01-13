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

      #@bal = 1000.00
      #@dep = 100.00
      #@wdl = 50.00
  
      #@bal = @transaction.balance
      #redirect_to root_path
      #render :show
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