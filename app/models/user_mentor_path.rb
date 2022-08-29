# frozen_string_literal: true

class UserMentorPath < ApplicationRecord
  belongs_to :User
  belongs_to :Path
end
