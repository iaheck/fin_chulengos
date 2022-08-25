class Resource < ApplicationRecord
    has_and_belongs_to_many :Checkpoint

    has_many :UserReadResource, dependant: :destroy
    has_many :Users, :through => :UserReadResource, dependant: :destroy
end
