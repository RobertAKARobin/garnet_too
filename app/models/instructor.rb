class Instructor < ActiveRecord::Base
  include Membership

  has_many :focus_students, foreign_key: :lead_instructor_id, class_name: "Student"

end
