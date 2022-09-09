class Roadmap < ApplicationRecord
  has_many :roadmaps_users, dependent: :destroy
  has_many :users, through: :roadmaps_users

  has_many :checkpoint_roadmaps
  has_many :checkpoints, through: :checkpoint_roadmaps

  validates :name, presence: true
  validates :description, presence: true
end
