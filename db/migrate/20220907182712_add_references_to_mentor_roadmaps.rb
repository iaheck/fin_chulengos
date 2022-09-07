class AddReferencesToMentorRoadmaps < ActiveRecord::Migration[7.0]
  def change
    remove_column :mentors_roadmaps, :mentor_id
    remove_column :mentors_roadmaps, :roadmap_id
    add_reference :mentors_roadmaps, :mentor, foreign_key: { to_table: :users }
    add_reference :mentors_roadmaps, :roadmap
  end
end
