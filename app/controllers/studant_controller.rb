class StudantController < ApplicationController
  def new
    studant = Studant.create! name: params[:name], email: params[:email], :facebook: params[:facebook], :cpf: params[:cpf], :type: params[:type]

    if studant.nil?
      render json: { status: 'error' }
    else
      render json: { status: 'success' }
    end
  end
end
