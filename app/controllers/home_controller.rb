class HomeController < ApplicationController

  def index
    projects_list = Project.includes(:photos).where(:active =>  true)
    @projects = Array.new
    projects_list.each do |p|
      if p.photos.size > 0
        @projects.push p  
      end
    end
  end

end
