class Project < ActiveRecord::Base
  attr_accessible :description, :title, :team_id, :items_attributes

  has_many :items
  accepts_nested_attributes_for :items

  belongs_to :team
end
