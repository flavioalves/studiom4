class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string  :name
      t.string  :email
      t.string  :phone
      t.boolean :contacted
      t.text    :comments

      t.timestamps
    end
  end
end
