class UserPath < ApplicationRecord
  belongs_to :user
  belongs_to :roadmap
end
