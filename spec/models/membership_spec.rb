require 'rails_helper'

# Student and Instructor both inherit from Membership module
RSpec.describe Membership, type: :module do
  before :all do
    User.destroy_all
    Cohort.destroy_all
    @wdi = Cohort.create(location: "dc", subject: "wdi")
    @juan = User.create(first_name: "Juan")
  end

  it "must belong to a cohort and a user" do
    student = Student.new
    expect(student.save).to be_falsey

    student.user = @juan
    expect(student.save).to be_falsey

    student.cohort = @wdi
    expect(student.save).to be_truthy
  end
end
