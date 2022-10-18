class CreateStats < ActiveRecord::Migration[7.0]
  def change
    create_table :stats do |t|
      t.string :orig_person_id
      t.string :season
      t.integer :orig_comp_id
      t.string :orig_team_id
      t.integer :games
      t.integer :minutes
      t.integer :goals
      t.integer :assists

      t.timestamps
    end
  end
end
