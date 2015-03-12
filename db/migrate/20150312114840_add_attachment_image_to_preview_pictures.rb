class AddAttachmentImageToPreviewPictures < ActiveRecord::Migration
  def self.up
    change_table :preview_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :preview_pictures, :image
  end
end
