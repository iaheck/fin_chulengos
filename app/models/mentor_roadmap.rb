class MentorRoadmap < ApplicationRecord
  belongs_to :mentor, class_name: "User"
  belongs_to :roadmap

# MentorRoadmap.find_by(mentor: user)
end
