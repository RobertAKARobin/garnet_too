class Student < ActiveRecord::Base
  include Membership

  belongs_to :lead_instructor, class_name: "Instructor"

end
