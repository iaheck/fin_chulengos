class CreatePaths < ActiveRecord::Migration[7.0]
  def change
    create_table :paths do |t|
      t.string :path_name
      t.text :description

      t.timestamps
    end
  end
end
