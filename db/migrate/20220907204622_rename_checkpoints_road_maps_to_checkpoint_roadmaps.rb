class RenameCheckpointsRoadMapsToCheckpointRoadmaps < ActiveRecord::Migration[7.0]
  def change
    rename_table :checkpoints_roadmaps, :checkpoint_roadmaps
  end
end
