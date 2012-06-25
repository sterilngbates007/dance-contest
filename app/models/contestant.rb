class Contestant < ActiveRecord::Base
  has_many :scores
  has_many :judges, :through => :scores
end
