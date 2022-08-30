class GroupChallengeAssignment < ApplicationRecord
    has_many :submit_group_challenges, dependent: :destroy
    belongs_to :group
    belongs_to :challenge_group
end
