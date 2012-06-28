class ContestsJudges < ActiveRecord::Migration
  def up
    create_table 'contests_judges', :id => false do |t|
      t.column :judge_id, :integer
      t.column :contest_id, :integer
    end
  end

  def down
  end
end
