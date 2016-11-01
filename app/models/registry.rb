class Registry < ActiveRecord::Base
  has_many :coordinators, :through => :registry_coordinators

  validates_presence_of :name, :location, :state

end
