class HomePagesController < ApplicationController

  def index
    @accounts = Account.all
    @entry = Entry.new
    @categories = Category.all
  end
end