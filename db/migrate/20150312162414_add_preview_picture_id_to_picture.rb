class AddPreviewPictureIdToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :preview_picture_id, :integer
  end
end
