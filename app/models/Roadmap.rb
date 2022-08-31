class Roadmap < ApplicationRecord
  has_and_belongs_to_many :checkpoints, :through => :checkpoints_roadmaps

  has_many :roadmaps_users, dependent: :destroy
  has_many :users, :through => :roadmaps_users

  has_many :mentors_roadmaps, dependent: :destroy
  has_many :mentors, :through => :mentors_roadmaps

  validates :name, presence: true
  validates :description, presence: true
end
