class AddUniqueConstraintsToParticipant < ActiveRecord::Migration
  def change
    add_index :participants, [:name, :gender, :dob]
  end
end
