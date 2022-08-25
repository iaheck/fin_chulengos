class ChallengeGroup < ApplicationRecord
    has_many :GroupChallengeAssignment, dependent: :destroy
end
