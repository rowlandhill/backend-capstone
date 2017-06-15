# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :project
  has_many :tasks, through: :project
end
