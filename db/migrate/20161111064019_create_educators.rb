class CreateEducators < ActiveRecord::Migration[5.0]
  def change
    create_table :educators do |t|
      t.string :name
      t.string :expertise

      t.timestamps
    end
  end
end
