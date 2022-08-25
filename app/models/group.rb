class Group < ApplicationRecord
    has_many :GroupChallengeAssignment, dependent: :destroy
    has_and_belongs_to_many :users
end
