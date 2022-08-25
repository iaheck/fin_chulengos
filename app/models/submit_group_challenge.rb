class SubmitGroupChallenge < ApplicationRecord
    belongs_to :GroupChallengeAssignment
    has_one :ReviewSubmitGroupChallenge , dependent: :destroy
end
