# frozen_string_literal: true

class CreateChallengeGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :challenge_groups do |t|
      t.string :name
      t.text :description
      t.string :url
      t.integer :checkpoint_id

      t.timestamps
    end
  end
end
