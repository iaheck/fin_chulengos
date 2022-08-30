class Group < ApplicationRecord
  has_many :group_challenge_assignments, dependent: :destroy
  has_and_belongs_to_many :users
end
