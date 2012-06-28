class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :place
      t.timestamps
      t.integer :contestant_id
      t.integer :judge_id
      t.integer :round_id
    end
  end
end
