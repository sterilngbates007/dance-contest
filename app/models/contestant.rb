class Contestant < ActiveRecord::Base
  has_and_belongs_to_many :contests
  has_many :scores
  has_many :judges, :through => :scores
end
