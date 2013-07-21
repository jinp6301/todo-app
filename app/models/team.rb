class Team < ActiveRecord::Base
  attr_accessible :name

  has_many :projects
  has_many :users, through: :team_memberships
  has_many :team_memberships
end
