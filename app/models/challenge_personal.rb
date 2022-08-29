# frozen_string_literal: true

class ChallengePersonal < ApplicationRecord
  belongs_to :Checkpoint
  has_many :UserChallengeAssigment, dependent: :destroy
end
