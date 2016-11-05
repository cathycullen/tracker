class AddUniqueConstraintsToEnrollment < ActiveRecord::Migration
  def change
    add_index :enrollments, [:participant_id, :registry_id], :unique => true
  end
end
