require 'rails_helper'

RSpec.describe Cohort, type: :model do
  before :all do
    Cohort.destroy_all
  end

  describe "#subject" do
    it "must be in preset list of GA branch locations" do
      c = Cohort.new(location: "dc")
      c.subject = "wdi"
      expect(c.save).to be_truthy

      c.subject = "banana"
      expect(c.save).to be_falsey
    end
  end

  describe "#location" do
    it "must be in preset list of GA branch locations" do
      c = Cohort.new(subject: "wdi")
      c.location = "dc"
      expect(c.save).to be_truthy

      c.location = "banana"
      expect(c.save).to be_falsey
    end
  end
end
