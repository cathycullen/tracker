class RemoveColumnsFromParticipants < ActiveRecord::Migration
  def change
    remove_column :participants, :enrollment_date, :date
    remove_column :participants, :method_of_contact, :string
    remove_column :participants, :remarks, :string
    remove_column :participants, :coordinator_id, :integer
    remove_column :participants, :registry_id, :integer
  end
end
