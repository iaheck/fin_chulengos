class Path < ApplicationRecord
  has_and_belongs_to_many :checkpoints

  has_many :user_paths, dependent: :destroy
  has_many :users, through: :user_path,
  has_many :user_path_users, through: :user_path, class_name: "User",
                                     foreign_key: "user_id"
  has_many :user_mentor_paths, dependent: :destroy
  has_many :user_mentor_paths_users, through: :user_mentor_paths, class_name: "User",
                                     foreign_key: "user_id"
  validates :name, presence: true
  validates :description, presence: true
end
