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
    column :description do |project|
      project.description.html_safe 
    end
    default_actions
  end

  show title: :title do |project|
    attributes_table do
      row :title
      row :active
      row :category
      row :description do
        project.description.html_safe
      end
      row :cover_photo do
        link_to project.cover_image
      end
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
      f.input :description, as: :ckeditor   

    end    

    

    f.inputs "Fotos do projeto", :multipart => true do
      
      f.input :cover_image, :as => :file, :hint => f.object.cover_image.nil? ? 
      f.template.content_tag(:span, "no photo yet") : f.template.image_tag(f.object.cover_image.url(:thumb))
      f.has_many :photos do |p|
        p.input :image, :as => :file, :hint => p.template.image_tag(p.object.image.url(:thumb)), :label => "Imagem"
        #link_to 'remove', remove_image(p), :confirm => "Are you sure?", :method => :delete
        #p.input :caption, :label => "Título" 

      end
    end

    f.actions
  end    

end