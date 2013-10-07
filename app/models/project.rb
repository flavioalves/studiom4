class Project < ActiveRecord::Base
  attr_accessible :description, :title, :category, :active
end
