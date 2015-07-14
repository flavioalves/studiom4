class GalleryPhoto < ActiveRecord::Base
  attr_accessible :caption, :image

   mount_uploader :image, PhotoUploader
end
