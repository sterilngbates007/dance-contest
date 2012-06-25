class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :place
      t.timestamps
    end
  end
end
