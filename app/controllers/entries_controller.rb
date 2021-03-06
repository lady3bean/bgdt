class EntriesController < ApplicationController
  def index
    if current_user
      @entries = current_user.accounts.entries
    else
      redirect_to :action=> 'new', :controller=>'sessions'
    end
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to :action=>'index', :controller=>'home_pages'
    else
      redirect_to :action=>'index', :controller=>'home_pages'
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:desc, :amount, :credit_account_id, :debit_account_id, :category_id)
  end
end