class StudantsController < ApplicationController
  def create
    studant = Studant.create!(params[:studant])

    if studant.nil?
      render json: { status: 'error' }
    else
      render json: { status: 'success' }
    end
  end
end
