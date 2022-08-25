class Checkpoint < ApplicationRecord
    has_many :ChallengePersonal, dependent: :destroy
    has_many :ChallengeGroup, dependent: :destroy
end
