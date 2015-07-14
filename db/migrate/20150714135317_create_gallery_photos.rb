class CreateGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :gallery_photos do |t|
      t.string :image
      t.string :caption

      t.timestamps
    end
  end
end
