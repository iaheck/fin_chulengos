class SubmitGroupChallenge < ApplicationRecord
    belongs_to :group_challenge_assignment
    has_one :review_submit_group_challenge , dependent: :destroy
end
