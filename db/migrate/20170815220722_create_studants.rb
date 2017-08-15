class CreateStudants < ActiveRecord::Migration
  def change
    create_table :studants do |t|
      t.string  :name
      t.string  :email
      t.string  :facebook
      t.string  :cpf
      t.string  :type
      t.boolean :ex_studant
      t.string  :status

      t.timestamps
    end
  end
end
