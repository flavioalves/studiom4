class CreateCoverPhotos < ActiveRecord::Migration
  def change
    create_table :cover_photos do |t|
      t.references :project
      t.string :image
      t.string :caption

      t.timestamps
    end
    add_index :cover_photos, :project_id
  end
end
