class AddAttendedEventIdToEventAttendings < ActiveRecord::Migration[7.0]
  def change
    add_column :event_attendings, :attended_event_id, :integer
  end
end
