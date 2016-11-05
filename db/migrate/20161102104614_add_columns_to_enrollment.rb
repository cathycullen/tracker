class AddColumnsToEnrollment < ActiveRecord::Migration
  def change
    add_column :enrollments, :enrollment_date, :date
    add_column :enrollments, :method_of_contact, :string
    add_column :enrollments, :remarks, :string
    add_column :enrollments, :coordinator_id, :integer
  end
end
