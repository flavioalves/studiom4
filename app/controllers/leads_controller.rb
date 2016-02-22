class LeadsController < ApplicationController
  def new
    lead = Lead.create! name: params[:name], email: params[:email], phone: params[:phone]

    if(lead == nil)
      render json: { status: 'error' }
    else
      render json: { status: 'success' }
    end
  end
end