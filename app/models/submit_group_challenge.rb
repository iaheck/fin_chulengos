class SubmitGroupChallenge < ApplicationRecord
    has_one :ReviewSubmitGroupChallenge , dependent: :destroy
end
