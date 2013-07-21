class User < ActiveRecord::Base
  attr_accessible :name, :team_memberships_attributes

  has_many :teams, through: :team_memberships
  has_many :team_memberships
  accepts_nested_attributes_for :team_memberships
end
