class Group < ApplicationRecord
    has_many :GroupChallengeAssignment, dependent: :destroy
end
