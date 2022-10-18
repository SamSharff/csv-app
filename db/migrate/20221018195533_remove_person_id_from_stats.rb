class RemovePersonIdFromStats < ActiveRecord::Migration[7.0]
  def change
    remove_column :stats, :person_id, :integer
  end
end
