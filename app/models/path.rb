class Path < ApplicationRecord
    has_and_belongs_to_many :Checkpoint

    has_many :UserPath, dependant: :destroy
    has_many :User, :through => :UserPath

    has_many :UserMentorPath, dependant: :destroy
    has_many :User, :through => :UserMentorPath
end
