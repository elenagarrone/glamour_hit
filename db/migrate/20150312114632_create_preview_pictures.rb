class CreatePreviewPictures < ActiveRecord::Migration
  def change
    create_table :preview_pictures do |t|

      t.timestamps null: false
    end
  end
end
