class Judge < ActiveRecord::Base
  has_many :scores
  has_many :contestants, :through => :scores
  accepts_nested_attributes_for :scores
  accepts_nested_attributes_for :contestants
  attr_accessible :place, :scores_attributes
end
