# frozen_string_literal: true

class CreateSubmitGroupChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :submit_group_challenges do |t|
      t.integer :assignment_id
      t.text :submit_content
      t.string :submit_git

      t.timestamps
    end
  end
end
