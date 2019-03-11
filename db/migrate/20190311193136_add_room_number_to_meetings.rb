class AddRoomNumberToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :room_number, :string
  end
end
