class UserChallengeAssigment < ApplicationRecord
    has_many :submit_personal_challenges, dependent: :destroy
    belongs_to :user
    belongs_to :challenge_personal
end
