class CreateSubmitPersonalChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :submit_personal_challenges do |t|
      t.integer :assigment_id
      t.string :submit_content
      t.string :git_submit
      t.datetime :submited_at

      t.timestamps
    end
  end
end
