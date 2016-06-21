module Membership
  extend ActiveSupport::Concern

  included do
    belongs_to :user
    belongs_to :cohort
    validates_presence_of :cohort_id, :user_id
  end

end
