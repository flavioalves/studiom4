class ContactsController < ApplicationController
  def index; end

  def new
    @contact = Contact.create! name: params[:name], email: params[:email], message: params[:message], phone: params[:phone]
    ContactMailer.contact_mail(@contact).deliver
    render json: { status: 'success' }
  end
end
