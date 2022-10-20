class AddUniqueIndexToPeople < ActiveRecord::Migration[7.0]
  def change
    add_index :people, :orig_person_id, unique: true
  end
end
