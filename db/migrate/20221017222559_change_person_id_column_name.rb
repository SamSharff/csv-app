class ChangePersonIdColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :people, :person_id, :orig_person_id
  end
end
