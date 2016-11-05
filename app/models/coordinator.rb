class Coordinator < ActiveRecord::Base
  has_many :registry_coordinators
  has_many :registries, :through => :registry_coordinators

  has_many :enrollments
  has_many :participants, :through => :enrollments

  has_many :participants
  
  validates_presence_of :name, :email, :phone
  validates_uniqueness_of :email

  def self.get_ids
    Coordinator.uniq.pluck(:id)
  end
end
