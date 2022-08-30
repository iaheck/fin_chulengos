class Path < ApplicationRecord
    has_and_belongs_to_many :checkpoints

    has_many :user_paths, dependent: :destroy
    has_many :users, :through => :user_path

    has_many :user_mentor_paths, dependent: :destroy
    has_many :users, :through => :user_mentor_paths

    validates :name, presence: true
    validates :description, presence: true
end
