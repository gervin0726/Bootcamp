class Contact < ActiveRecord::Base
  validates :name, :address, presence:true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  def makeFavorite(id)
    contact = Contact.find(id)
    contact.update(favorite: 1)
  end
end
