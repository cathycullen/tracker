class Registry < ActiveRecord::Base
  has_many :registry_coordinators
  has_many :coordinators, :through => :registry_coordinators


  has_many :enrollments
  has_many :participants, :through => :enrollments

  validates_presence_of :name, :location, :state

end
