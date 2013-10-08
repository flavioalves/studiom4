class HomeController < ApplicationController

  def index
    @projects = Project.includes(:photos).all
  end

end
