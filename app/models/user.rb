class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable
  has_many :UserChallengeAssignment, dependent: :destroy
  has_many :resources, through: :user_read_resources, dependent: :destroy

  has_many :roadmap_users, dependent: :destroy
  has_many :roadmaps, through: :roadmap_users
end
