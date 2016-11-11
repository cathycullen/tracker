class Registry < ActiveRecord::Base
  has_many :registry_coordinators
  has_many :coordinators, :through => :registry_coordinators

  has_many :enrollments
  has_many :participants, :through => :enrollments

  validates_presence_of :name, :location, :state
  validates_inclusion_of :state, :in => %w( open closed ), on: :update
  validates_inclusion_of :state, :in => %w( open ), on: :create

  self.scope :open_registries, -> { where(state: 'open') }

  def coordinator_id
  end
end
