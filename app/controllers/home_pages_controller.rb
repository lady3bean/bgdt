class HomePagesController < ApplicationController

  def index
    @accounts = current_user.accounts
    @entry = Entry.new
    @categories = Category.all
  end
end
