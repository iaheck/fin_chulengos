class CreateCheckpointPaths < ActiveRecord::Migration[7.0]
  def change
    create_table :checkpoints_paths do |t|
      t.integer :path_id
      t.integer :checkpoint_id

      t.timestamps
    end
  end
end
