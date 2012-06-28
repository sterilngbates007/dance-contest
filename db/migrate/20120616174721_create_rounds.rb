class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :cycle
      t.integer :place
      t.column :contest_id, :integer
      t.column :contestant_id, :integer
      t.column :judge_id, :integer
      t.timestamps
    end
  end
end
