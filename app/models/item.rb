class Item < ActiveRecord::Base
  attr_accessible :completed, :description, :project_id, :title

  belongs_to :project
end
