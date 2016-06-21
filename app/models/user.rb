class User < ActiveRecord::Base
  has_many :students
  has_many :instructors
  has_many :cohorts_taught, through: :instructors
  has_many :cohorts_taken, through: :students
end
