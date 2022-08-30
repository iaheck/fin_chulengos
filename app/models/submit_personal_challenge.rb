class SubmitPersonalChallenge < ApplicationRecord
  belongs_to :user_challenge_assigment
  has_one :review_submit_personal_challenge, dependent: :destroy
end
