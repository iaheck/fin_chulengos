class UserPath < ApplicationRecord
    belongs_to :User
    belongs_to :Path
end
