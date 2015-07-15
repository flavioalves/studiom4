ActiveAdmin.register GalleryPhoto do
  # -*- coding: utf-8 -*-
  		
  config.per_page = 30

  
  index do
    column :id
    column :image
    default_actions
  end

  show title: :image do |photo|
    attributes_table do
      row :image
         
    end
    
    active_admin_comments
  end

  form do |f|
    f.inputs "Foto de Galeria" , :multipart => true do
      f.input :image, :as => :file, :hint => f.object.image.nil? ? 
      f.template.content_tag(:span, "no photo yet") : f.template.image_tag(f.object.image.url(:thumb))
    end    

    f.actions
  end    

end
