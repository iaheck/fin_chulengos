class DropPathCheckpoints < ActiveRecord::Migration[7.0]
  def change
    drop_table :path_checkpoints
  end
end
