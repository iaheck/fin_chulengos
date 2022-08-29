# frozen_string_literal: true

class CreateUserChallengeAssigments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_challenge_assigments do |t|
      t.integer :user_id
      t.integer :challenge_personal_id
      t.datetime :started_at

      t.timestamps
    end
  end
end
