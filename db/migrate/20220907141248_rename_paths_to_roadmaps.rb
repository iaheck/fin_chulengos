class RenamePathsToRoadmaps < ActiveRecord::Migration[7.0]
  def change
    rename_table :paths, :roadmaps
  end
end
