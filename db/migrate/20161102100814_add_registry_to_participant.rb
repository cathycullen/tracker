class AddRegistryToParticipant < ActiveRecord::Migration
  def change
    add_reference :participants, :registry, index: true
  end
end
