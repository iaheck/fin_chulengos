# frozen_string_literal: true

class CreateGroupChallengeAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :group_challenge_assignments do |t|
      t.integer :group_id
      t.integer :challenge_id
      t.datetime :started_at

      t.timestamps
    end
  end
end
