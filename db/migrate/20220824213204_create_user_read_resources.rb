class CreateUserReadResources < ActiveRecord::Migration[7.0]
  def change
    create_table :user_read_resources do |t|
      t.integer :user_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
