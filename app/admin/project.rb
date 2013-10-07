# -*- coding: utf-8 -*-
ActiveAdmin.register Project do
  menu parent: I18n.t('app.active_admin.project'), priority: 1
  config.per_page = 30

  filter :active
  filter :title
  filter :category, as: :select, collection: ["Residencial", "Reformas", "Interiores", "Comercial"]

  index do
    column :id
    column :title
    column :active
    column :category
    column :description
    default_actions
  end

  show title: :title do |project|
    attributes_table do
      row :title
      row :active
      row :category
      row :description   
    end
    
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :active
      f.input :category, as: :select, collection: ["Residencial", "Reformas", "Interiores", "Comercial"]            
      f.input :description       
    end    
    f.actions
  end    


end