class SubmitPersonalChallenge < ApplicationRecord
    has_one :ReviewSubmitPersonalChallenge, dependent: :destroy
end
