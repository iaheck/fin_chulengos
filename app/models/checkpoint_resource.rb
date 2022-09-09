class CheckpointResource < ApplicationRecord
  belongs_to :checkpoint
  belongs_to :resource
end
