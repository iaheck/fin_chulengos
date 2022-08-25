class GroupChallengeAssignment < ApplicationRecord
    has_many :SubmitGroupChallenge, dependent: :destroy
end
