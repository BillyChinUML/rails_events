class AddAttendeeIdToEventAttendings < ActiveRecord::Migration[7.0]
  def change
    add_column :event_attendings, :attendee_id, :integer
  end
end
