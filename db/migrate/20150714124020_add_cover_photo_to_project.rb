class AddCoverPhotoToProject < ActiveRecord::Migration
  def change
    add_column :projects, :cover_image, :string
    add_column :projects, :cover_caption, :string
  end
end
