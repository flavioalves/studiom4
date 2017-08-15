ActiveAdmin.register Studant do
  menu priority: 11

  filter :name
  filter :email
  filter :type
  filter :ex_studant
  filter :status
  filter :created_at

  config.per_page = 10

  index do
    column :name
    column :email
    column :facebook
    column :type
    column :ex_studant
    column :status
    column :created_at
    default_actions
  end
end
