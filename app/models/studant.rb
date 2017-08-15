class Studant < ActiveRecord::Base
  attr_accessible :name, :email, :facebook, :cpf, :type, :ex_studant, :status

  validates :name, :email, :facebook, :cpf, presence: true
end
