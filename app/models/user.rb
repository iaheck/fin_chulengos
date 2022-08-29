class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable
  has_many :UserChallengeAssignment, dependent: :destroy
  has_and_belongs_to_many :groups
  has_many :UserReadResource, dependent: :destroy
  has_many :Resource, :through => :UserReadResource, dependent: :destroy

  has_many :UserPath, dependent: :destroy
  has_many :Path, :through => :UserPath

  has_many :UserMentorPath, dependent: :destroy
  has_many :Path, :through => :UserMentorPath
end
