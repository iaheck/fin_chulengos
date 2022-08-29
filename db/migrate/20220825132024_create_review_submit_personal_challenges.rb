# frozen_string_literal: true

class CreateReviewSubmitPersonalChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :review_submit_personal_challenges do |t|
      t.integer :submit_personal_challenge_id
      t.text :comment
      t.datetime :reviewed_at
      t.datetime :approved_at

      t.timestamps
    end
  end
end
