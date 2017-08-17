class ChangeTypeStudantAttr < ActiveRecord::Migration
  def change
    rename_column :studants, :type, :studant_type
  end
end
