class UserChallengeAssigment < ApplicationRecord
    has_many :SubmitPersonalChallenge, dependent: :destroy
    belongs_to :User
end
