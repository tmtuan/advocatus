class AddAttachmentPhotoToEducators < ActiveRecord::Migration
  def self.up
    change_table :educators do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :educators, :photo
  end
end
