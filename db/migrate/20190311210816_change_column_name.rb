class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column(:meetings, :room_number, :room)
  end
end
