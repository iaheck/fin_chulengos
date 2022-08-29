# frozen_string_literal: true

class CreateUserPaths < ActiveRecord::Migration[7.0]
  def change
    create_table :user_paths, id: false do |t|
      t.integer :user_id
      t.integer :path_id

      t.timestamps
    end
  end
end
