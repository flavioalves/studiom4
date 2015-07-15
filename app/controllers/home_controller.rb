class HomeController < ApplicationController

  def index
    @gallery_photos = GalleryPhoto.order(:created_at)

    projects_list = Project.includes(:photos).where(:active =>  true)
    @projects = Array.new
    projects_list.each do |p|
      if p.photos.size > 0
        @projects.push p  
      end
    end

    2
  end

end
