class Checkpoint < ApplicationRecord
  has_many :challenge_personals, dependent: :destroy
  has_and_belongs_to_many :roadmaps
  has_and_belongs_to_many :resources
end
