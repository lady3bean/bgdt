class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  def show
    @account = Account.find(params[:id])
  end

  private
  def account_params
    params.require(:account).permit(:name)
  end
end