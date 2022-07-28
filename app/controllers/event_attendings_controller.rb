class EventAttendingsController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @users = User.all
  end

  def create
    @event = Event.find(params[:event_id])
    @user = current_user
    @event_attending = @event.event_attendings.create
    @event_attending.event_id = @event.id
    @event_attending.user_id = @user.id
    @event_attending.attended_event_id = @event_attending.event_id
    @event_attending.attendee_id = @event_attending.user_id

    if @event_attending.save
      redirect_to event_path(@event)
    else
      redirect_to errors_path
    end
  end
end
