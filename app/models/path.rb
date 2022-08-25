class Path < ApplicationRecord
    has_and_belongs_to_many :Checkpoint
end
