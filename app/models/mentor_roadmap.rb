class MentorRoadmap < ApplicationRecord
  belongs_to :mentor, class_name: "User"
  belongs_to :roadmap
end
