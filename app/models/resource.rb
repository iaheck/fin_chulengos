class Resource < ApplicationRecord
  has_many :checkpoint_resources, dependent: :destroy
  has_many :checkpoints, through: :checkpoint_resources, dependent: :destroy

  has_many :user_read_resources, dependent: :destroy
  has_many :users, through: :user_read_resources, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true
end
