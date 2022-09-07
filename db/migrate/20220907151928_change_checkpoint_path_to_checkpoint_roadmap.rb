class ChangeCheckpointPathToCheckpointRoadmap < ActiveRecord::Migration[7.0]
  def change
    rename_table :checkpoints_paths, :checkpoints_roadmaps
  end
end
