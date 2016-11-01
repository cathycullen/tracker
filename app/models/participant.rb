class Participant < ActiveRecord::Base
  belongs_to :coordinator
  validates_presence_of :name, :gender, :dob, :enrollment_date, :method_of_contact, :remarks

end
