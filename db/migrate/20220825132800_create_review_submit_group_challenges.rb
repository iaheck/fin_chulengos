class CreateReviewSubmitGroupChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :review_submit_group_challenges do |t|
      t.integer :submit_group_challenge_id
      t.text :comment
      t.datetime :reviewed_at
      t.datetime :approved_at
      t.integer :reviewer_user_id

      t.timestamps
    end
  end
end
