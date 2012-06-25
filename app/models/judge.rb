class Judge < ActiveRecord::Base
  has_many :scores
  has_many :contestants, :through => :scores
end
