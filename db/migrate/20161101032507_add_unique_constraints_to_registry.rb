class AddUniqueConstraintsToRegistry < ActiveRecord::Migration
  def change
    add_index :registries, [:name, :location], :unique => true
  end
end
