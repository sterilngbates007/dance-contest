class Contest < ActiveRecord::Base
  has_and_belongs_to_many :contestants
  has_and_belongs_to_many :judges
  has_many :rounds
end
