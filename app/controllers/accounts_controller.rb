class AccountsController < ApplicationController

  def index
    if current_user
      @accounts = current_user.accounts
    else
      redirect_to action: 'new', controller: 'sessions'
    end
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id
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