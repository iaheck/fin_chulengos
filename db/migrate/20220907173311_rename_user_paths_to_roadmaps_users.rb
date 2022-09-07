class RenameUserPathsToRoadmapsUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_paths, :roadmaps_users
    rename_column :roadmaps_users, :path_id, :roadmap_id
  end
end
