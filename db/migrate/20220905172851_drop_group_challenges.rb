class DropGroupChallenges < ActiveRecord::Migration[7.0]
  def change
    drop_table :review_submit_group_challenges
    drop_table :submit_group_challenges
    drop_table :challenge_groups
    drop_table :group_challenge_assignments
    drop_table :groups
    drop_table :user_groups
  end
end
