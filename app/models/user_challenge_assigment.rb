# frozen_string_literal: true

class UserChallengeAssigment < ApplicationRecord
  has_many :SubmitPersonalChallenge, dependent: :destroy
  belongs_to :User
  belongs_to :ChallengePersonal
end
