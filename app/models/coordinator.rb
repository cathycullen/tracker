class Coordinator < ActiveRecord::Base
  has_many :registry_coordinators
  has_many :registries, :through => :registry_coordinators

  has_many :participants
  validates_presence_of :name, :email, :phone
  validates_uniqueness_of :email
end
