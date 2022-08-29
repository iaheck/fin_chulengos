# frozen_string_literal: true

class SubmitGroupChallenge < ApplicationRecord
  belongs_to :GroupChallengeAssignment
  has_one :ReviewSubmitGroupChallenge, dependent: :destroy
end
