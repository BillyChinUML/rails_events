class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user.id
    @events = Event.all
  end
  
end
