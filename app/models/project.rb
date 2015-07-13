class Project < ActiveRecord::Base
  attr_accessible :description, :title, :category, :active, :photos_attributes, :cover_photo

  has_many :photos, dependent: :destroy
  has_one :cover_photo, dependent: :destroy

  accepts_nested_attributes_for :photos, :cover_photo
end
