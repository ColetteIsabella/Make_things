class Topic < ActiveRecord::Base
  attr_accessible :description, :name
  validates :namme, :presence => true
end
