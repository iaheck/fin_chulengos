class ChallengePersonal < ApplicationRecord
  belongs_to :checkpoint
  has_many :user_challenge_assigments, dependent: :destroy
end
