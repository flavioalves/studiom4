class Project < ActiveRecord::Base
  attr_accessible :description, :title, :category, :active, :photos_attributes, :cover_image, :cover_caption

  has_many :photos, dependent: :destroy
  
  mount_uploader :cover_image, PhotoUploader
  accepts_nested_attributes_for :photos
end

