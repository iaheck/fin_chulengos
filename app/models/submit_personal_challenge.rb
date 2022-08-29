# frozen_string_literal: true

class SubmitPersonalChallenge < ApplicationRecord
  belongs_to :UserChallengeAssigment
  has_one :ReviewSubmitPersonalChallenge, dependent: :destroy
end
