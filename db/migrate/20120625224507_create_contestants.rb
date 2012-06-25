class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name

      t.timestamps
    end
  end
end
