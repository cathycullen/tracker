class AddUniqueConstraintsToRegistryCoordinator < ActiveRecord::Migration
  def change
    add_index :registry_coordinators, [:coordinator_id, :registry_id], :unique => true
  end
end
