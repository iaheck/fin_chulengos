class RenameUsersMentorPathToMentorsRoadmaps < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_mentor_paths, :mentors_roadmaps
    rename_column :mentors_roadmaps, :path_id, :roadmap_id
    rename_column :mentors_roadmaps, :usre_id, :mentor_id
  end
end
