class Score < ActiveRecord::Base
  belongs_to :contestant
  belongs_to :judge
end
