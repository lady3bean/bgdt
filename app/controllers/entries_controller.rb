class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to :action=>'index', :controller=>'accounts'
    else
      render 'new'
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:desc, :amount, :credit_account_id, :debit_account_id, :category_id)
  end
end