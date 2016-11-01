class CreateRegistryCoordinators < ActiveRecord::Migration
  def change
    create_table :registry_coordinators do |t|
      t.references :coordinator, index: true
      t.references :registry, index: true

      t.timestamps
    end
  end
end
