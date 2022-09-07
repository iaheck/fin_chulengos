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
  has_many :user_read_resources, dependent: :destroy
  has_many :resources, :through => :user_read_resources, dependent: :destroy

  has_many :roadmaps_users, dependent: :destroy
  has_many :roadmaps, :through => :roadmaps_users

  has_many :mentors_roadmaps, dependent: :destroy
  has_many :roadmaps, :through => :mentors_roadmaps
end
