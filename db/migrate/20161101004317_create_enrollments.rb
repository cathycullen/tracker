class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :participant, index: true
      t.references :registry, index: true

      t.timestamps
    end
  end
end
