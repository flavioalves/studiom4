class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :message, :phone

  validates :email, :message, presence: true
end
