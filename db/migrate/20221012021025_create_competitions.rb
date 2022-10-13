class CreateCompetitions < ActiveRecord::Migration[7.0]
  def change
    create_table :competitions do |t|
      t.integer :comp_id
      t.string :name
      t.string :team_type
      t.string :scope
      t.string :competition_format
      t.string :country
      t.timestamps
    end
  end
end
