class UserMentorPath < ApplicationRecord
    belongs_to :User
    belongs_to :Path
end
