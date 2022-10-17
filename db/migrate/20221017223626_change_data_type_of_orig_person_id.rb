class ChangeDataTypeOfOrigPersonId < ActiveRecord::Migration[7.0]
  def change
    change_column :people, :orig_person_id, :string
  end
end
