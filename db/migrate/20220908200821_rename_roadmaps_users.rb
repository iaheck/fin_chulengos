class RenameRoadmapsUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :roadmaps_users, :roadmap_users
  end
end
