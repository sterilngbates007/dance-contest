class Score < ActiveRecord::Base
  belongs_to :contestant
  belongs_to :judge
  accepts_nested_attributes_for :contestant
end
