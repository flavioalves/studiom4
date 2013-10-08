class Project < ActiveRecord::Base
  attr_accessible :description, :title, :category, :active, :photos_attributes

  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos
end
