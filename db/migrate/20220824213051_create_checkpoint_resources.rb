class CreateCheckpointResources < ActiveRecord::Migration[7.0]
  def change
    create_table :checkpoint_resources do |t|
      t.integer :checkpoint_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
