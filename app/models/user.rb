class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable,
      :confirmable, :lockable
  has_many :user_challenge_assignments, dependent: :destroy
  has_and_belongs_to_many :groups
  has_many :user_read_resources, dependent: :destroy
  has_many :resources, :through => :user_read_resources, dependent: :destroy

  has_many :user_paths, dependent: :destroy
  has_many :paths, :through => :user_paths

  has_many :user_mentor_paths, dependent: :destroy
  has_many :paths, :through => :user_mentor_paths
end
