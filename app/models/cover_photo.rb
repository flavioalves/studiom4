class CoverPhoto < ActiveRecord::Base
  attr_accessible :caption, :image, :project_id
  
  belongs_to :project
  mount_uploader :image, PhotoUploader
end
