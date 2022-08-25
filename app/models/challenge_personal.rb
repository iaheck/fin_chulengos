class ChallengePersonal < ApplicationRecord
    has_many :UserChallengeAssigment, dependent: :destroy
end
