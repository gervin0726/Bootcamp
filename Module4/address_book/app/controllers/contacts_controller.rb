class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(created_at: :asc)
  end

  def make_favorite
    Contact.makeFavorite(params[:id])
  end

  def new
  end

  def create
    contact = Contact.create(
      name: params[:contact][:name],
      address: params[:contact][:address],
      phone_number: params[:contact][:phone_number],
      email: params[:contact][:email]
    )

    redirect_to contact.save ? "/contacts" : "/contacts/new"
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
