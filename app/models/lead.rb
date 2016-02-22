class Lead < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :comments, :contacted

  validates :name, :email, presence: true
end
