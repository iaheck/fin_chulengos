class ChangeCheckpointRoadmapColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :checkpoints_roadmaps, :path_id, :roadmap_id
  end
end
