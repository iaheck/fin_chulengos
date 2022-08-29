# frozen_string_literal: true

class ChallengeGroup < ApplicationRecord
  belongs_to :Checkpoint
  has_many :GroupChallengeAssignment, dependent: :destroy
end
