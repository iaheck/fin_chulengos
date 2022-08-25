class Checkpoint < ApplicationRecord
    has_many :ChallengePersonal, dependent: :destroy
    has_many :ChallengeGroup, dependent: :destroy
    has_and_belongs_to_many :Path
    has_and_belongs_to_many :Resource
end
