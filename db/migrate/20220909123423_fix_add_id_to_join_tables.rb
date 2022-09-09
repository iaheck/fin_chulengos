class FixAddIdToJoinTables < ActiveRecord::Migration[7.0]
  def change
    add_column :checkpoint_resources, :id, :primary_key
    add_column :roadmaps_users, :id, :primary_key
  end
end
