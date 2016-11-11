class Enrollment < ActiveRecord::Base
  belongs_to :registry
  belongs_to :participant
  belongs_to :coordinator
  validates_presence_of :enrollment_date, :method_of_contact, :registry, :participant, :coordinator

  validates_presence_of :remarks, :allow_blank => true
  validates_uniqueness_of :registry_id, :scope => :participant_id

end
