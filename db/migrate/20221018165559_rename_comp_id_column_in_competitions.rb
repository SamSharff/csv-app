class RenameCompIdColumnInCompetitions < ActiveRecord::Migration[7.0]
  def change
    rename_column :competitions, :comp_id, :orig_comp_id
  end
end
