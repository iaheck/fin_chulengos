class DropSubmitReviewReadResourceAndMentor < ActiveRecord::Migration[7.0]
  def change
    drop_table :submit_personal_challenges
    drop_table :review_submit_personal_challenges
    drop_table :user_read_resources
    drop_table :mentors_roadmaps
  end
end
