# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable
  has_many :UserChallengeAssignment, dependent: :destroy
  has_and_belongs_to_many :groups
  has_many :UserReadResource, dependant: :destroy
  has_many :Resource, through: :UserReadResource, dependant: :destroy

  has_many :UserPath, dependant: :destroy
  has_many :Path, through: :UserPath

  has_many :UserMentorPath, dependant: :destroy
  has_many :Path, through: :UserMentorPath
end
