class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :lockable
  has_many :UserChallengeAssignment, dependent: :destroy
  has_and_belongs_to_many :groups
  has_many :user_read_resources, dependent: :destroy
  has_many :resources, through: :user_read_resources, dependent: :destroy

  has_many :user_paths, dependent: :destroy
  has_many :user_paths_paths, through: :user_paths, class_name: "Path", foreign_key: "path_id"

  # We need to use an alias
  has_many :user_mentor_paths, dependent: :destroy
  has_many :user_mentor_paths_paths, through: :user_mentor_paths, class_name: "Path",
                                     foreign_key: "path_id"
end
