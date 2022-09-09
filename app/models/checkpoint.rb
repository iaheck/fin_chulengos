class Checkpoint < ApplicationRecord
  has_many :challenge_personals, dependent: :destroy

  has_many :checkpoint_resources, dependent: :destroy
  has_many :resources, through: :checkpoint_resources, dependent: :destroy

  has_many :checkpoint_roadmaps
  has_many :roadmaps, through: :checkpoint_roadmaps

  validates :name, presence: true
  validates :description, presence: true
end
