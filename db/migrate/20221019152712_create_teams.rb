class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :orig_team_id
      t.string :name
      t.string :country
      t.string :team_type

      t.timestamps
    end
  end
end
