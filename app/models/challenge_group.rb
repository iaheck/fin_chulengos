class ChallengeGroup < ApplicationRecord
  belongs_to :checkpoint
  has_many :group_challenge_assignments, dependent: :destroy
end
