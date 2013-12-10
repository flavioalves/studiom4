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
      row :photos do
        project.photos.collect { |s| link_to s.image }.join(', ').html_safe
      end
         
    end
    
    active_admin_comments
  end

  form do |f|
    f.inputs "Detalhes do projeto" , :multipart => true do
      f.input :title
      f.input :active
      f.input :category, as: :select, collection: ["Residencial", "Reformas", "Interiores", "Comercial"]            
      f.input :description       
    end    

    f.inputs "Fotos do projeto", :multipart => true do
      f.has_many :photos do |p|
        p.input :image, :as => :file, :hint => p.template.image_tag(p.object.image.url(:thumb)), :label => "Imagem"
        #p.input :caption, :label => "Título"         
      end
    end

    f.actions
  end    


end