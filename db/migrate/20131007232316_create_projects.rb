class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :category
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
