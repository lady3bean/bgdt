class HomePagesController < ApplicationController

  def index
    @accounts = Account.all
    @entry = Entry.new
  end
end
