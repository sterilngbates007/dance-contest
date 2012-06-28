class Contestant < ActiveRecord::Base
  has_many :scores
  has_many :judges, :through => :scores
  accepts_nested_attributes_for :scores
  attr_accessible :place, :scores_attributes
end
