class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :gender
      t.date :dob
      t.date :enrollment_date
      t.string :phone
      t.string :email
      t.string :method_of_contact
      t.text :remarks

      t.timestamps
    end
  end
end
