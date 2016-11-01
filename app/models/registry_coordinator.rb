class RegistryCoordinator < ActiveRecord::Base
  attr_accessor :registry_id, :coordinator_id

  belongs_to :registry
  belongs_to :coordinator
end
