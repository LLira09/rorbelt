class EventsController < ApplicationController
  def edit
  end

  def index
    @user = User.find(session[:user])
  end

  def show
  end
end
