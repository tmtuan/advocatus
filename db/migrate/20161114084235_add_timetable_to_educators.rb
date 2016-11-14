class AddTimetableToEducators < ActiveRecord::Migration[5.0]
  def change
    add_column :educators, :timetable, :string
  end
end
