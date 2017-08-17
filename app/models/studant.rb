class Studant < ActiveRecord::Base
  attr_accessible :name, :email, :facebook, :cpf, :studant_type, :ex_studant, :status

  validates :name, :email, :facebook, :cpf, presence: true
end
