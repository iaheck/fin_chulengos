class Checkpoint < ApplicationRecord
  has_many :challenge_personals, dependent: :destroy
  has_and_belongs_to_many :resources

  has_many :checkpoint_roadmaps
  has_many :roadmaps, through: :checkpoint_roadmaps
end
