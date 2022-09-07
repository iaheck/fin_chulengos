class RoadmapUser < ApplicationRecord
  belongs_to :user
  belongs_to :roadmap
end
