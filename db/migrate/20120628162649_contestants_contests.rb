class ContestantsContests < ActiveRecord::Migration
  def up
    create_table 'contestants_contests', :id => false do |t|
      t.column :contestant_id, :integer
      t.column :contest_id, :integer
    end
  end

  def down
  end
end
