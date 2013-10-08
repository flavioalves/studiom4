class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :project_id
      t.string :image
      t.string :caption

      t.timestamps
    end
  end
end
