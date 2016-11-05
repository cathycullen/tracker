class AddParticipantToCoordinators < ActiveRecord::Migration
  def change
    add_reference :coordinators, :participant, index: true
  end
end
