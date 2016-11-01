class Enrollment < ActiveRecord::Base
  belongs_to :participant
  belongs_to :registry
end
