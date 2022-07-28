class EventsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all
  end

  def show
    @users = User.all
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.created_events.build(event_params)
    @event.user_id = @user.id
    @event.creator_id = @event.user_id

    if @event.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  
  def event_params
    params.require(:event).permit(:name, :date, :location, :description)
  end
  
end
