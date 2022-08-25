class UserChallengeAssigment < ApplicationRecord
    has_many :SubmitPersonalChallenge, dependent :destroy
end
