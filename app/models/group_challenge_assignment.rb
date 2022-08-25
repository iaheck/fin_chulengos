class GroupChallengeAssignment < ApplicationRecord
    has_many :SubmitGroupChallenge, dependent: :destroy
    belongs_to :Group
end
