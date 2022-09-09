class UserChallengeAssigment < ApplicationRecord
  belongs_to :user
  belongs_to :challenge_personal
end
