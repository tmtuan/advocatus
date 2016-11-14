class AddIntroToEducators < ActiveRecord::Migration[5.0]
  def change
    add_column :educators, :intro, :string
  end
end
