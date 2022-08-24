class RenamePathNameToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :name, :description
  end
end
