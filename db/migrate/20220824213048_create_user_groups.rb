# frozen_string_literal: true

class CreateUserGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :user_groups, id: false do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
