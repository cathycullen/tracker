class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.string :name
      t.string :location
      t.string :state

      t.timestamps
    end
  end
end
