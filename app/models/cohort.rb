class Cohort < ActiveRecord::Base
  has_many :students
  has_many :instructors

  validates_inclusion_of :location, in: GA[:locations].keys
  validates_inclusion_of :subject, in: GA[:course_subjects].keys


end
