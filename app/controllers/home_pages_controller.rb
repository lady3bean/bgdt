class HomePagesController < ApplicationController

  def index
    if current_user
      @accounts = current_user.accounts
    else
      redirect_to :action=> 'new', :controller=> 'users'
    end
    @entry = Entry.new
    @categories = Category.all
  end
end
