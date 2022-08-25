class UserReadResource < ApplicationRecord
    belongs_to :User
    belongs_to :Resource
end
