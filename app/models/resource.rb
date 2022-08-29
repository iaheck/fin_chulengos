class Resource < ApplicationRecord
    has_and_belongs_to_many :Checkpoint
    has_many :UserReadResource, dependent: :destroy
    has_many :Users, :through => :UserReadResource, dependent: :destroy
end
