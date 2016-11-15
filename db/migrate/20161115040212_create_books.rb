class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :learnerid
      t.integer :mentorid
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
