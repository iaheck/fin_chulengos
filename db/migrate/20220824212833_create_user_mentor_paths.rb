class CreateUserMentorPaths < ActiveRecord::Migration[7.0]
  def change
    create_table :user_mentor_paths do |t|
      t.integer :usre_id
      t.integer :path_id

      t.timestamps
    end
  end
end
